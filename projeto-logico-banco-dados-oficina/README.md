# 🔧 Projeto Lógico de Banco de Dados – Oficina Mecânica (MySQL)

## 📌 Sobre o Projeto
Este projeto tem como objetivo a construção de um **projeto lógico de banco de dados do zero**, utilizando o MySQL, a partir de um **modelo conceitual (ER)** aplicado ao contexto de uma **oficina mecânica**.

O projeto contempla todas as etapas, desde a definição do esquema lógico até a implementação do banco de dados, garantindo integridade referencial e funcionamento correto.

---

## 🧩 Cenário da Oficina
O banco de dados representa uma oficina onde:
- Clientes possuem veículos
- Veículos passam por ordens de serviço
- Ordens de serviço podem conter vários serviços
- Serviços são executados por mecânicos
- Ordens de serviço podem utilizar peças

---

## 🗄️ Estrutura do Banco de Dados
Banco de dados: **oficina**

Tabelas:
- cliente
- veiculo
- mecanico
- servico
- ordem_servico
- item_servico
- peca
- item_peca

---

## 🛠️ Tecnologias Utilizadas
- MySQL 8+
- SQL (DDL e DML)

---

## ▶️ Como Executar o Projeto
1. Abra o MySQL Workbench ou outro cliente MySQL  
2. Execute o arquivo `database.sql`  
3. O banco de dados será criado automaticamente  
4. Dados de teste serão inseridos  
5. Uma consulta final valida o funcionamento do sistema  

---

## ✨ Considerações Finais
Este projeto demonstra a aplicação prática da modelagem conceitual para a criação de um esquema lógico funcional, representando um cenário realista de oficina mecânica.
