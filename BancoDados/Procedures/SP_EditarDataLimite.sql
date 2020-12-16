IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_EditarDataLimite]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_EditarDataLimite]
GO
CREATE PROCEDURE [dbo].[SP_EditarDataLimite]
	@IdTarefa BIT,
	@DataLimite DATETIME

AS
	/* 
	Documenta��o
	M�dulo............: Tarefa
	Objetivo..........: Alterar a data limite da tarefa
	EX................: EXEC [dbo].[SP_EditarDataLimite] 1, '20210102 03:30:00 PM'
	*/
	BEGIN
		UPDATE Tarefa 
		SET DataLimite = @DataLimite
		WHERE IdTarefa = @IdTarefa

	END
