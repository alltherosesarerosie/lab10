USE workers
GO
CREATE TRIGGER workers_DELETE
ON worker
AFTER DELETE
AS
INSERT INTO History (worker_id, Operation)
SELECT Id, 'Удален employee ' +'   name: ' + name +  '   lastname: ' +last_name+  '   activity: ' +work
FROM DELETED
