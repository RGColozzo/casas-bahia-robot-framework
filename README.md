# Test for NT Consult Job

## Questions

```bash
1. Por que Qualidade é importante para você?
```

Resposta: A qualidade é importante para mim pois na minha opinião se um produto não tem qualidade ele muito provavelmente não atende ao que o cliente precisa que ele atenda. Muito provavelmente, sem qualidade significa sem eficiencia e sem eficacia. Portanto, qualidade deveria ser o foco de toda empresa. Produtos com qualidade atraem mais clientes e por consequencia geram mais receita e mais lucro!

```bash
2. Na sua opinião, quais são as principais razões para se investir em automação de testes?
```

Resposta: A automação de testes evita muito do erro humano que acontecer dentro dos testes manuais, além disso aumenta também a velocidade e efetividade dos testes pois quando se faz testes manuais tendemos a ter um trabalho mais lento do que com as automações que podem ser executadas em questão de segundo ou até mesmo milisegundos. Outro ponto importante é que com a automação de testes nós conseguimos aumentar a cobertura de testes que um produto pode ter, visto que o tempo que seria perdido executando testes manuais nós gastar colocando as automações em uma pipeline de execução de testes continuo e enquanto novos testes são planejados e mapeados para serem desenvolvidos os outros testes, que ja estão prontos, ficam rodando sem precisar de alguém ali focado em executar aqueles cenários.

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

Resposta: Alternativa A

```bash
4. Em um time ágil, como você acredita que a automação se encaixa nas Sprints
e como podemos garantir que ela aconteça?
```

Resposta: A automação deve ser encaixada como uma tarefa de sprint que precisa ser desenvolvida e para garantir que ela aconteça o foco do QA deve ser na entrega de automações, enquanto o time em si o ajuda com os testes regressivos que precisam ser feitos em toda sprint para entrega dos pacotes da release.

```bash
5. Em uma reunião de planejamento seu time estima 4 semanas para garantir
todas as atividades de teste de uma funcionalidade, mas seu Product Owner
compartilha com o time a necessidade legal de entregar a mesma em 2
semanas. O que você faz?
```

Resposta: Tento explicar e argumentar a ele que correr com a entrega, quebrando o tempo estimado pela metade, muito provavelmente, em quase 90% ou mais dos casos, vai apenas nos gerar um re-trabalho futuro devido a bugs que podem ser de nivel baixo até critico e que ao invés da entrega levar apenas 4 semanas ela vai acabar levando o dobro devido ao re-trabalho para correção dos bugs e inconsistencias, e re-teste da funcionalidade. 

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

Resposta: Alternativa A

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

Resposta: Alternativa A

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

Resposta: A = post / B = get / C = patch / D = put / E = delete/users/:id

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

Respostas:

A) ALTER TABLE Cliente ADD email VARCHAR(50) NULL;

B) INSERT INTO Cliente (nome, sobrenome, email)
    VALUES ('José', 'Silva', 'jose@cb.com.br'),
           ('João', 'Pedro', 'joao@pf.com.br'),
           ('Pedro', 'Silva', 'pedro@ex.com.br');

C) INSERT INTO Pedidos (cliente_id, produto, preco)
    VALUES (1, 'Geladeira Brastemp', '1800,00'),
           (2, 'Fogão Consul', '850,90'),
           (3, 'Celular Iphone XR', '3399,00');

D) SELECT * FROM Pedidos WHERE client_id IN (SELECT id FROM Cliente WHERE sobrenome = 'Silva');

E) DROP TABLE Pedidos;
    
```bash
10.Acesse o blog do Agi: https://blogdoagi.com.br/.
Considerando a pesquisa de artigos do blog (lupa no canto superior esquerdo), liste os possíveis cenários para a respectiva funcionalidade.
```

Resposta: 

1) Buscar por algo que exista no blog

2) Buscar por algo que não exista no blog

3) Cancelar uma busca clicando no X

4) Fazer uma busca sem digitar nada no campo de texto

5) Validar texto do campo e do botão

6) Fazer uma nova busca apos não encontrar o que buscou anteriormente

```bash
11. Escolha a linguagem de programação de sua preferência para automatizar os dois principais cenários da questão anterior.

INSTRUÇÕES: Crie o repositório no GitHub (público) e COPIE e COLE o link aqui. Desenvolva a automação e suba o código no repositório.

DICAS ÚTEIS:
1. Reserve um tempo para fazer a automação, pois boas práticas serão consideradas.
2. Primeiramente, crie o repositório e já cole aqui para não correr o risco de sua internet ficar instável e perder a sessão.
3. Qualquer problema entre em contato com o recrutador. Nosso time estará à disposição para tirar dúvidas.
```

Para executar a automação basta acessar o diretório do projeto (após clonado) pelo terminal e digitar *make runtest*.