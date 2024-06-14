import os
import yaml
from collections import namedtuple
from robot.libraries.BuiltIn import BuiltIn

def load_page_attributes(page):
    file_name = f"{page}.yaml"
    test_path = os.path.abspath(os.path.join(BuiltIn().get_variable_value("${SUITE_SOURCE}"), os.pardir))
    local_page = f"{test_path}/pages/{file_name}"
    
    try:
        with open(local_page) as file:
            return yaml.safe_load(file)
    except Exception as e:
        print(f"Could not load local page object: {e}")
        return None

def select_os(yaml_page):
    os = BuiltIn().get_variable_value("${BROWSER}").lower()
    page = {}
    
    for key, value in yaml_page.items():
        selector = value.get(os, {}).get("selector", "")
        selector_value = value.get(os, {}).get("value", "")
        
        if selector == "text":
            page[key] = selector_value
        else:
            page[key] = f"{selector}{selector_value}" if selector and selector_value else \
                        "Selector empty, please go to the page object definition and fill it with a not empty value"
        
    return page

def get_page_attributes(page):
    yaml_page = load_page_attributes(page)
    
    if not yaml_page:
        print(f"Failed to load page attributes for {page}")
        return None
    
    page_current_device = select_os(yaml_page)
    
    if not page_current_device:
        print(f"Failed to select OS for {page}")
        return None
    
    try:
        return namedtuple("X", page_current_device.keys())(*page_current_device.values())
    except Exception as e:
        print(f"Failed to convert JSON to object: {e}")
        return None
