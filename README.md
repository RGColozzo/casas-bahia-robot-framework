# 🇺🇸 | Testes para Casas Bahia
## 🤖 | Automação de testes com Robot Framework e Selenium

<p align="center">
 <a href="#Pré-Requisitos">Pré-Requisitos</a> • 
 <a href="#Configuração">Configuração</a> • 
 <a href="#Execução">Execução</a> • 
 <a href="#Autor">Autor</a>
</p>

### Pré-Requisitos
---

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:

- [x] [Python](https://www.python.org)
- [x] [VSCode](https://code.visualstudio.com/)
- [x] [Git Bash](https://git-scm.com/downloads)
- [x] [MinGW](https://osdn.net/projects/mingw/releases/?source=post_page-----b4d115d7c516--------------------------------)

Antes de iniciarmos a instalação do Robot Framework, lembre-se de editar a sua variável PATH (nas variavies de ambiente) adicionando o caminho "C:\MinGW\bin". *Sem isso não conseguiremos rodar o comando make para executar a nossa suite de testes automatizados.*

Agora com as ferramentas instaladas vamos clonar este repositório. Para isso, utilize o comando abaixo no seu Git Bash (dentro do diretório que você deseja clonar o repositório):

```bash
$ git clone https://github.com/RGColozzo/test-for-casas-bahia.git
```

Feito isso, agora podemos instalar o MinGW, o Robot Framework e a biblioteca do Selenium!

### Configuração
---

✅ *PASSO 0* - Abra o CMD (como administrador) e execute o seguinte comando para instalar o MinGW:
```bash
$ mingw-get install mingw32-make
```

✅ *PASSO 1* - Agora abra o Git Bash e execute os seguintes comandos:

```bash
# Validar versão do GNU Make
$ mingw32-make --version

# Validar versão do Python
$ python --version

# Validar versão do Pip
$ pip --version
```

Após executar os comandos, você deverá ver algo parecido com as linhas abaixo:

```bash
$ mingw32-make --version
$ GNU Make 3.82.90

$ python --version
$ Python 3.12.4

$ pip --version
$ pip 24.0 from C:\Users\{USER}\AppData\Local\Programs\Python\Python312\Lib\site-packages\pip (python 3.12)
```

*Obs.: Caso veja algo diferente, ou algum erro seja apresentado, volte aos <a href="#Pré-Requisitos">Pré-Requisitos</a> e faça a instalação do Python ou do MinGW novamente (a depender do erro).*

✅ *PASSO 2* - Agora vamos até a pasta de instalação do MinGW para realizar uma alteração e facilitar nossa execução dos próximos comandos. Dentro da pasta *C:\MinGW\bin* você encontrará um arquivo chamado *mingw32-make.exe*, basta renomear o mesmo para *make.exe* e salvar.


✅ *PASSO 3* - Se tiver dado tudo certo nos passos anteriores, agora basta executar o comando abaixo:

```bash
$ make runreq
```

*Com isso as depêndencias do projeto (robot e selenium) serão instaladas automaticamente.*

✅ *PASSO 4* - Agora temos que baixar e salvar o driver: [Chromedriver](https://chromedriver.chromium.org/downloads), pois iremos utilizar o Google Chrome como nosso navegador de teste padrão. *Obs.: Verifique a versão do seu navegador Google Chrome e faça download do driver compatível com a mesma.*

✅ *PASSO 5* - Tire o arquivo baixado de dentro do .zip (ou .rar).

✅ *PASSO 6* - Vá até o seu disco local C: e crie uma pasta chamada "drivers".

✅ *PASSO 7* - Coloque o arquivo chromedriver.exe dentro da pasta criada no passo anterior.

✅ *PASSO 8* - Edite a variável PATH e adicione nela o caminho do seu driver do chrome (C:\drivers\chromedriver.exe).

Agora que temos tudo configurado, vamos rodar o script? Então bora!

### Execução
---

Você deve ter percebido que dentro do repositório que você clonou existe um arquivo chamado "makefile". Este arquivo contém o comando necessário para que possamos executar os cenários de testes automatizados criados, como podemos ver abaixo:

```bash
runtest:
	python3 -m robot -d logs -i @casasbahia -L debug test/casas_bahia.robot
```

Para executar, digitar o seguinte comando no seu Git Bash:

```bash
$ make runtest
```

### Autor
---

Feito por [Rennan Gimenez](https://www.instagram.com/rennanrimenez)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)