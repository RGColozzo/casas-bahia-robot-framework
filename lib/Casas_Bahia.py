import json
import os
import random
from collections import namedtuple

import  yaml
from robot.libraries.BuiltIn import BuiltIn

def load_page_attributes(page):
    file_name = f"{page}.yaml"
    # Obter o caminho do diretório atual
    current_directory = os.path.dirname(__file__)
    # Navegar para o diretório pai do diretório atual
    parent_directory = os.path.abspath(os.path.join(current_directory, os.pardir))
    # Construir o caminho para o diretório 'pages'
    pages_directory = os.path.join(parent_directory, 'pages')
    # Construir o caminho completo para o arquivo YAML
    local_page = os.path.join(pages_directory, file_name)
    
    print("Trying to load local page object:", local_page)
    
    try:
        with open(local_page) as file:
            yaml_data = yaml.safe_load(file)
            print("YAML Data:", yaml_data)
            return yaml_data
    except Exception as e:
        print("Could not load local page object:", e)
        return None


        
def select_os(yaml_page):
    os = BuiltIn().get_variable_value("${BROWSER}").lower()
    page = {}
    
    for key, value in yaml_page.items():
        if os in value:  # Verifica se a chave 'os' está presente no dicionário 'value'
            selector = value[os].get("selector", "")
            selector_value = value[os].get("value", "")
            
            if selector == "text":
                page[key] = selector_value
            else:
                page[key] = f"{selector}{selector_value}" if selector and selector_value else \
                            "Selector empty, please go to the page object definition and fill it with a not empty value"
        else:
            print(f"'{os}' key not found in '{key}'")
        
    return page


def get_page_attributes(page):
    yaml_page = load_page_attributes(page)
    
    print("YAML Page:", yaml_page)  # Adicionando uma instrução print para verificar o valor de yaml_page
    
    if not yaml_page:
        print(f"Failed to load page attributes for {page}")
        return None
    
    page_current_device = select_os(yaml_page)
    
    print("Page Current Device:", page_current_device)  # Adicionando uma instrução print para verificar o valor de page_current_device
    
    if not page_current_device:
        print(f"Failed to select OS for {page}")
        return None
    
    try:
        page_object = namedtuple("X", page_current_device.keys())(*page_current_device.values())
        print("Page Object:", page_object)  # Adicionando uma instrução print para verificar o valor de page_object
        return page_object
    except Exception as e:
        print(f"Failed to convert JSON to object: {e}")
        return None