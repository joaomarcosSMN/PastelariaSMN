IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarUsuariosDoGestor]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarUsuariosDoGestor]
GO
CREATE PROCEDURE [dbo].[SP_ConsultarUsuariosDoGestor]
	@IdGestor SMALLINT

AS
	/* 
	Documenta��o
	M�dulo............: Tarefa
	Objetivo..........: Consultar todos os usu�rios de acordo com IdGestor
	EX................: EXEC [dbo].[SP_ConsultarUsuariosDoGestor] 1
	*/
	BEGIN
		SELECT * FROM Usuario 
		WHERE IdGestor = @IdGestor

	END
