IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarTotalTarefasGestor]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarTotalTarefasGestor]
GO
CREATE PROCEDURE [dbo].[SP_ConsultarTotalTarefasGestor]
	@IdGestor SMALLINT

AS
	/* 
	Documenta��o
	M�dulo............: Tarefa
	Objetivo..........: Consultar o total de tarefas atrasadas, futuras e agendadas
	EX................: EXEC [dbo].[SP_ConsultarTotalTarefasGestor] 1
	*/
	BEGIN
		SELECT COUNT(*) AS TotalTarefas FROM Tarefa 
		WHERE IdStatusTarefa = 2 OR IdStatusTarefa = 3 OR IdStatusTarefa = 4 AND IdGestor = @IdGestor 

	END
