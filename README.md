# PT-BR | Automação de Teste - Casas Bahia
## 🤖 | Robot Framework + Selenium

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
$ git clone [https://github.com/RGColozzo/test-for-casas-bahia.git](https://github.com/RGColozzo/casas-bahia-robot-framework.git)
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

✅ *PASSO 4* - Agora temos que baixar e salvar o driver: [Chromedriver](https://googlechromelabs.github.io/chrome-for-testing/), pois iremos utilizar o Google Chrome como nosso navegador de teste padrão. *Obs.: Verifique a versão do seu navegador Google Chrome e faça download do driver compatível com a mesma.*

✅ *PASSO 5* - Tire o arquivo baixado de dentro do .zip (ou .rar).

✅ *PASSO 6* - Vá até o seu disco local C: e crie uma pasta chamada "drivers".

✅ *PASSO 7* - Coloque o arquivo chromedriver.exe dentro da pasta criada no passo anterior.

✅ *PASSO 8* - Edite a variável PATH e adicione nela o caminho do seu driver do chrome (C:\drivers\chromedriver.exe).

Agora que temos tudo configurado, vamos rodar o script? Então bora!

### Execução
---

Você deve ter percebido que dentro do repositório que você clonou existe um arquivo chamado "makefile". Este arquivo contém os comandos necessários para que possamos executar os cenários de testes automatizados criados, como podemos ver abaixo:

```bash
runreq:
	pip install -r requirements.txt

runAlltests:
	python -m robot -d logs -i @casasbahia -L debug test/casas_bahia.robot

runPtests:
	python -m robot -d logs -i @positive -L debug test/casas_bahia.robot

runNtests:
	python -m robot -d logs -i @negative -L debug test/casas_bahia.robot

run1test:
	python -m robot -d logs -i @1test -L debug test/casas_bahia.robot

runMetrics:
	robotmetrics -M metrics-dashboard.html --inputpath ./logs/ --output output.xml
```

Para executar todos os cenários de teste, basta digitar o seguinte comando no seu Git Bash:

```bash
$ make runAlltests
```

Após a finalização da execução da automação, execute o seguinte comando no seu Git Bash para gerar o dashboard de métricas:

```bash
$ make runMetrics
```

### Autor
---

Feito por [Rennan Gimenez](https://www.instagram.com/rennangimenez/)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)

---

# EN-US | Test Automation - Casas Bahia
## 🤖 | Robot Framework + Selenium

<p align="center">
 <a href="#Prerequisites">Prerequisites</a> • 
 <a href="#Configuration">Configuration</a> • 
 <a href="#Execution">Execution</a> • 
 <a href="#Author">Author</a>
</p>

### Prerequisites
---

Before you start, you will need to have the following tools installed on your machine:

- [x] [Python](https://www.python.org)
- [x] [VSCode](https://code.visualstudio.com/)
- [x] [Git Bash](https://git-scm.com/downloads)
- [x] [MinGW](https://osdn.net/projects/mingw/releases/?source=post_page-----b4d115d7c516--------------------------------)

Before we begin installing Robot Framework, remember to edit your PATH variable (in environment variables) by adding the path "C:\MinGW\bin". *Without this, we won't be able to run the make command to execute our suite of automated tests.*

Now that the tools are installed, let's clone this repository. To do this, use the command below in your Git Bash (inside the directory where you want to clone the repository):

```bash
$ git clone [https://github.com/RGColozzo/test-for-casas-bahia.git](https://github.com/RGColozzo/casas-bahia-robot-framework.git)
```

Once done, we can now install MinGW, Robot Framework, and the Selenium library!

### Configuration
---

✅ *STEP 0* - Open CMD (as administrator) and execute the following command to install MinGW:
```bash
$ mingw-get install mingw32-make
```

✅ *STEP 1* - Now open Git Bash and execute the following commands:

```bash
# Validate GNU Make version
$ mingw32-make --version

# Validate Python version
$ python --version

# Validate Pip version
$ pip --version
```

After executing the commands, you should see something similar to the lines below:

```bash
$ mingw32-make --version
$ GNU Make 3.82.90

$ python --version
$ Python 3.12.4

$ pip --version
$ pip 24.0 from C:\Users\{USER}\AppData\Local\Programs\Python\Python312\Lib\site-packages\pip (python 3.12)
```

*Note: If you see something different, or if any errors are encountered, return to the <a href="#Prerequisites">Prerequisites</a> and reinstall Python or MinGW as needed.*

✅ *STEP 2* - Now let's go to the MinGW installation folder to make a change and facilitate the execution of our next commands. Inside the *C:\MinGW\bin* folder, you will find a file named *mingw32-make.exe*, simply rename it to *make.exe* and save.

✅ *STEP 3* - If everything went well in the previous steps, now just execute the command below:

```bash
$ make runreq
```

*With this, the project dependencies (robot and selenium) will be automatically installed.*

✅ *STEP 4* - Now we need to download and save the driver: [Chromedriver](https://googlechromelabs.github.io/chrome-for-testing/), as we will be using Google Chrome as our default test browser. *Note: Check your Google Chrome browser version and download the driver compatible with it.*

✅ *STEP 5* - Extract the downloaded file from the .zip (or .rar).

✅ *STEP 6* - Go to your local disk C: and create a folder called "drivers".

✅ *STEP 7* - Place the chromedriver.exe file inside the folder created in the previous step.

✅ *STEP 8* - Edit the PATH variable and add the path of your chrome driver (C:\drivers\chromedriver.exe) to it.

Now that everything is set up, shall we run the script? Let's go!

### Execution
---

You might have noticed that inside the repository you cloned there's a file called 'makefile.' This file contains the necessary commands for us to execute the automated test scenarios created, as we can see below:

```bash
runreq:
	pip install -r requirements.txt

runAlltests:
	python -m robot -d logs -i @casasbahia -L debug test/casas_bahia.robot

runPtests:
	python -m robot -d logs -i @positive -L debug test/casas_bahia.robot

runNtests:
	python -m robot -d logs -i @negative -L debug test/casas_bahia.robot

run1test:
	python -m robot -d logs -i @1test -L debug test/casas_bahia.robot

runMetrics:
	robotmetrics -M metrics-dashboard.html --inputpath ./logs/ --output output.xml
```

To execute all test scenarios, simply type the following command in your Git Bash:

```bash
$ make runAlltests
```

After the automation execution completes, run the following command in your Git Bash to generate the metrics dashboard:

```bash
$ make runMetrics
```

### Author
---

Made by [Rennan Gimenez](https://www.instagram.com/rennangimenez/)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)
