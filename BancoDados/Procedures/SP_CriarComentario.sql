IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_CriarComentario]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_CriarComentario]
GO
CREATE PROCEDURE [dbo].[SP_CriarComentario]
    @Comentario VARCHAR(300),
    @IdTarefa SMALLINT

AS
	/* 
	Documenta��o
	M�dulo............: Coment�rio
	Objetivo..........: Criar um coment�rio
	EX................: EXEC [dbo].[SP_CriarComentario] 'Faltou energia dia 17/12', 1
	*/
	BEGIN
        INSERT INTO [dbo].[Comentario]
			(Descricao, IdTarefa)
			VALUES
			(@Comentario, @IdTarefa)

	END

