USE workers
GO
CREATE TRIGGER worlers_INSERT
ON worker
AFTER INSERT
AS
INSERT INTO History (worker_id, Operation)
SELECT id, 'Добавлен employee ' +'   name: ' + name +  '   lastname: ' +last_name+  '   activity: ' +work
FROM INSERTED
