/*
Desafio: Alterações de vestimenta

Etapa 1

Criamos um banco de dados de roupas e decidimos que precisamos de uma coluna de preço.
Use ALTER para adicionar uma coluna "price" à tabela. Então, selecione todas as colunas 
em cada linha para ver como sua tabela ficou.*/

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50),
    design VARCHAR(50));
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

#Para adicionar uma coluna a tabela existente
ALTER TABLE clothes ADD COLUMN price DECIMAL(5,2);

SELECT * FROM clothes;

/*
Etapa 2

Agora, atribua um preço a cada item usando UPDATE - o item 1 deve custar 10 reais, 
o item 2 deve custar 20 reais e o item 3 deve custar 30 reais. Quando terminar, faça 
outro SELECT de todas as linhas para verificar se a atribuição funcionou como esperado.*/

UPDATE clothes set price = 10 WHERE id = 1;
UPDATE clothes set price = 20 WHERE id = 2;
UPDATE clothes set price = 30 WHERE id = 3;

SELECT * FROM clothes;

/*
Etapa 3

Agora, insira um novo item na tabela que tenha todos os três atributos preenchidos, incluindo o preço, 
"price". Faça um último SELECT de todas as linhas e verifique se deu certo.*/

INSERT INTO clothes (type, design, price) VALUES ("Camisa", "Branca", 5);

SELECT * FROM clothes;