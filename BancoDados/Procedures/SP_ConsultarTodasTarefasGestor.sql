IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarTodasTarefasGestor]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarTodasTarefasGestor]
GO
CREATE PROCEDURE [dbo].[SP_ConsultarTodasTarefasGestor]
	@IdGestor SMALLINT

AS
	/* 
	Documenta��o
	M�dulo............: Tarefa
	Objetivo..........: Consultar todas as tarefas de acordo com IdGestor
	EX................: EXEC [dbo].[SP_ConsultarTodasTarefasGestor] 1
	*/
	BEGIN
		SELECT * FROM Tarefa 
		WHERE IdGestor = @IdGestor 

	END
