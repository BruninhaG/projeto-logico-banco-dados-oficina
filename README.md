# 🔧 Projeto Lógico de Banco de Dados – Oficina Mecânica (MySQL)

## 📌 Descrição do Projeto
Este projeto tem como objetivo a construção de um **projeto lógico de banco de dados do zero**, utilizando o MySQL, a partir de um **modelo conceitual (ER)** aplicado ao contexto de uma **oficina mecânica**.

O desafio contempla todas as etapas do processo, desde a definição do esquema lógico até a implementação física do banco de dados, garantindo integridade referencial, organização e funcionamento correto do sistema.

---

## 🧩 Cenário Proposto
O banco de dados representa o funcionamento de uma oficina mecânica, onde:

- Clientes podem possuir um ou mais veículos  
- Veículos passam por ordens de serviço  
- Ordens de serviço podem conter vários serviços  
- Serviços são executados por mecânicos  
- Ordens de serviço podem utilizar peças  
- O sistema permite rastrear clientes, veículos, serviços, mecânicos e peças utilizadas  

---

## 🗄️ Estrutura do Banco de Dados
**Nome do banco:** `oficina`

### Tabelas criadas:
- `cliente`
- `veiculo`
- `mecanico`
- `servico`
- `ordem_servico`
- `item_servico`
- `peca`
- `item_peca`

Cada tabela foi modelada com:
- Chave primária (PK)
- Chaves estrangeiras (FK)
- Relacionamentos coerentes com o modelo conceitual

---

## 🛠️ Tecnologias Utilizadas
- MySQL 8+
- SQL (DDL e DML)
- MySQL Workbench (ou qualquer cliente MySQL)

---

## ▶️ Como Executar o Projeto

1. Clone este repositório ou faça o download do projeto  
2. Abra o MySQL Workbench (ou outro gerenciador MySQL)  
3. Execute o arquivo `database.sql`  
4. O banco de dados `oficina` será criado automaticamente  
5. As tabelas e os dados de teste serão inseridos  
6. Uma consulta final será executada para validar o funcionamento do banco  

---

## ✅ Validação do Funcionamento
O arquivo `database.sql` inclui:
- Criação do banco de dados  
- Criação de todas as tabelas  
- Inserção de dados de teste  
- Consulta SQL final para validar os relacionamentos entre as tabelas  

Se a consulta retornar dados corretamente, o banco está funcionando conforme o esperado.

---

## 📂 Estrutura do Repositório

- `README.md` → Documentação do projeto  
- `database.sql` → Script SQL com a implementação completa do banco  

---

## ✨ Considerações Finais
Este projeto demonstra a aplicação prática dos conceitos de **modelagem conceitual e lógica de banco de dados**, traduzindo um cenário real em uma estrutura funcional e organizada no MySQL.

O desenvolvimento reforça a importância da definição correta de entidades, relacionamentos e restrições, garantindo integridade dos dados e aderência aos requisitos do negócio.

Projeto desenvolvido como parte de um **desafio prático de modelagem de banco de dados**.

---

## 👩‍💻 Autora

Feito com 💛 por Bruna Guimarães

---

## 🌟 Apoie o projeto 

Se você gostou, não esqueça de deixar um ⭐ no repositório! Isso ajuda muito o projeto a crescer e me incentiva a continuar criando. 🙌
