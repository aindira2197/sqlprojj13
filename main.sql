CREATE TABLE d3 (id INT, name VARCHAR(50));
CREATE TABLE e3 (id INT, department_id INT);

INSERT INTO d3 VALUES (1,'IT'),(2,'HR');
INSERT INTO e3 VALUES (1,1),(2,1),(3,2);

SELECT d.name, COUNT(e.id)
FROM d3 d
JOIN e3 e ON d.id = e.department_id
GROUP BY d.name
HAVING COUNT(e.id) > 1;
