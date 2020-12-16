IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarTarefasUsuario]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarTarefasUsuario]
GO
CREATE PROCEDURE [dbo].[SP_ConsultarTarefasUsuario]
(@IdUsuario SMALLINT)	
AS
	/* 
	Documenta��o
	M�dulo............: Tarefa
	Objetivo..........: Consulta as tarefas de um usu�rio espec�fico
	EX................: EXEC [dbo].[SP_ConsultarTarefasUsuario] 1
	*/
	BEGIN
		SELECT * FROM Tarefa 
		WHERE IdSubordinado = @IdUsuario
	END