# Update the status of one order
UPDATE orders
SET status = "gata de livrare"
WHERE id = 3;

# Add comments to one order
UPDATE orders
SET comments = "trebuie tinuta la maxim 15*C"
WHERE id = 1;

# View all customers
SELECT *
FROM `dbsummer_2022`.`customers`;

# View all orders for the third customer
SELECT *
FROM `dbsummer_2022`.`orders`
WHERE customer_id = 3;

# When placing an order update the stock for the products – try to implement with a small number of queries and explain your choice

# varianta cu trigger
# Am ales sa folosesc un trigger pentru a actualiza stocul produselor de fiecare data cand este introdus un detaliu de la o oferta.
# La stoc am scazut cantitatea care corespunde detaliului adaugat cu id-ul maxim din tabelul orderdetails (pentru a lua ultimul rand adaugat).
# Pentru a actualiza doar produsul care a fost adaugat in orderdetails, codul (code) trebuie sa fie acelasi cu cel de la ultimul 
# rand adaugat din orderdetails (product_code).  

delimiter |
CREATE TRIGGER insert_oferdetails
AFTER INSERT ON `dbsummer_2022`.`orderdetails`
	FOR EACH ROW
	BEGIN
		UPDATE `dbsummer_2022`.`products`
		SET stock = stock - (SELECT quantity
							 FROM `dbsummer_2022`.`orderdetails`
							 WHERE id = (SELECT MAX(id)
										 FROM `dbsummer_2022`.`orderdetails`))
		WHERE code = (SELECT product_code
					  FROM `dbsummer_2022`.`orderdetails`
					  WHERE id = (SELECT MAX(id)
							      FROM `dbsummer_2022`.`orderdetails`));
	END;
|
delimiter ;


# varianta fara trigger : se ruleaza intai insert, iar apoi update

INSERT INTO `dbsummer_2022`.`orderdetails`
(`product_code`,`order_id`,`quantity`,`price_each`)
VALUES
("2939",3,4,3.18);

UPDATE `dbsummer_2022`.`products`
SET stock = stock + (SELECT quantity
					 FROM `dbsummer_2022`.`orderdetails`
					 WHERE id = (SELECT MAX(id)
								 FROM `dbsummer_2022`.`orderdetails`))
WHERE code = (SELECT product_code
			  FROM `dbsummer_2022`.`orderdetails`
			  WHERE id = (SELECT MAX(id)
						  FROM `dbsummer_2022`.`orderdetails`));
