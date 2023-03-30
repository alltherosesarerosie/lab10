USE workers
GO
CREATE TRIGGER worker_UPDATE
ON worker
AFTER UPDATE
AS
INSERT INTO History (worker_id, Operation)
SELECT Id, 'Обновлен данные о employee ' +'   name: ' + name +  '   lastname: ' +last_name+  '   activity: ' +work
FROM INSERTED
