# Test for NT Consult Job

## Questions

```bash
1. Por que Qualidade é importante para você?
```

Resposta: 

```bash
2. Na sua opinião, quais são as principais razões para se investir em automação de testes?
```

Resposta: 

```bash
3. Indique qual a alternativa correta em relação à diferença entre o re-testing e regression testing:
    A) o re-testing está executando um teste novamente; o regression testing
    procura efeitos colaterais inesperados.
    
    B) o re-testing procura efeitos colaterais inesperados; o regression testing
    está repetindo esses testes.
    
    C) o re-testing é feito após as falhas serem corrigidas; o regression testing é
    feito durante o desenvolvimento da aplicação.
    
    D) o re-testing usa ambientes diferentes, o regression testing usa o mesmo
    ambiente.
    
    E) o re-testing é feito por desenvolvedores, o regression testing é feito por
    QA engineer.
```

Resposta: 

```bash
4. Em um time ágil, como você acredita que a automação se encaixa nas Sprints
e como podemos garantir que ela aconteça?
```

Resposta: 

```bash
5. Em uma reunião de planejamento seu time estima 4 semanas para garantir
todas as atividades de teste de uma funcionalidade, mas seu Product Owner
compartilha com o time a necessidade legal de entregar a mesma em 2
semanas. O que você faz?
```

Resposta: 

```bash
6. Dado que o ambiente está configurado para execução de testes automatizados utilizando o Selenium WebDriver, indique a alternativa correta em relação ao que ocorrerá com o código abaixo após 10 execuções:


public class SimpleWebDriverScript {
	
	public static void main(String[] args) {

		WebDriver driver = new ChromeDriver();
		String URL = "https://www.google.com";
		driver.get(URL);
		driver.manage().timeouts().implicitlyWait(25, TimeUnit.SECONDS);
		System.out.println("Wepbpage gets loaded successfully!!");

	}
}

Alternativas:
    A) Abrirá 10x o browser Chrome, irá fechar e irá exibir a mensagem 10 vezes.
    
    B) Abrirá 10x o browser Chrome, não irá fechá-lo e irá exibir a mensagem 10
    vezes.
    
    C) Não compilará.
    
    D) Nenhuma das alternativas anteriores.
```

Resposta: 

```bash
7. Dado que o ambiente está configurado para execução de testes automatizados utilizando o Selenium WebDriver, indique a alternativa correta para o código abaixo:


WebDriver driver = new ChromeDriver();
String URL = "https://www.google.com";
driver.get(URL);

driver.manage().timeouts().implicitlyWait(25, TimeUnit.SECONDS);
WebElement element = driver.findElement(By.name("q"));
element.sendKeys("Selenium Driver");
element.submit();

System.out.println("Wepbpage gets loaded successfully!!");


Alternativas:
    A) O código não compila.
    
    B) Esse elemento não existe.
    
    C) Executará, abrirá o Google, fará uma pesquisa com "Selenium Driver" e
    exibirá uma mensagem no console.
    
    D) Executará, abrirá o Google, fará uma pesquisa com "Selenium Driver" e
    efetuará uma asserção.
    
    E) Nenhuma das alternativas anteriores.
```

Resposta: 

```bash
8.Complete os espaços em branco sobre os verbos HTTP:
* get
* post
* patch
* delete
* put


    A) cria um usuário
        _____ /users

    B) recupera os detalhes do usuário identificado com o id fornecido
        _____ /users/:id

    C) atualiza parcialmente o conteúdo identificado com o ID fornecido
        _____ /users/:id

    D) substitui o conteúdo identificado pelo id fornecido
        _____ /users/:id

    E) exclui o conteúdo identificado com o id fornecido
        _____ /users/:id
```

Resposta: 

```bash
9. Considere a seguinte criação das tabelas Cliente e Pedido:

CREATE TABLE Cliente (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome varchar(255),
sobrenome varchar(255)
);

CREATE TABLE Pedidos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
cliente_id int(5),
produto varchar(255),
preco decimal(5,2)
);

Com base na criação das tabelas acima, responda com a declaração SQL correta para cada uma das ações abaixo:

    A) Criar uma Coluna de email na tabela Cliente

    B) Inserir, 3 clientes na tabela Cliente com os seguintes dados:
        -José Silva, email: jose@cb.com.br
        -João Pedro, email: joao@pf.com.br
        -Pedro Silva, email : pedro@ex.com.br

    C) Inserir um pedido para cada cliente com os seguintes dados:
        -Para o cliente 1: Produto: Geladeira Brastemp, Preço: 1800,00
        -Para o cliente 2: Produto: Fogão Consul, Preço 850,90
        -Para o cliente 3: Produto: Celular Iphone XR, Preço 3399,00

    D) Selecionar todos os pedidos de clientes com sobrenome Silva

    E) Apagar a tabela Pedidos
```

Resposta: 

```bash
10.Acesse o blog do Agi: https://blogdoagi.com.br/.
Considerando a pesquisa de artigos do blog (lupa no canto superior esquerdo), liste os possíveis cenários para a respectiva funcionalidade.
```

Resposta: 

```bash
11. Escolha a linguagem de programação de sua preferência para automatizar os dois principais cenários da questão anterior.

INSTRUÇÕES: Crie o repositório no GitHub (público) e COPIE e COLE o link aqui. Desenvolva a automação e suba o código no repositório.

DICAS ÚTEIS:
1. Reserve um tempo para fazer a automação, pois boas práticas serão consideradas.
2. Primeiramente, crie o repositório e já cole aqui para não correr o risco de sua internet ficar instável e perder a sessão.
3. Qualquer problema entre em contato com o recrutador. Nosso time estará à disposição para tirar dúvidas.
```

Resposta: Arquivos necessários para execução da automação encontram-se neste repositório.