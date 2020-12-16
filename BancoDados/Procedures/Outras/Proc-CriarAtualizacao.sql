IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_CriarAtualizacao]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_CriarAtualizacao]
GO

CREATE PROCEDURE [dbo].[SP_CriarAtualizacao]
	@Motivo VARCHAR(200),
	@Fk_Tarefa SMALLINT,
	@Fk_Usuario SMALLINT,
	@Status_Tarefa TINYINT

AS  
	/* 
	Documenta��o
	M�dulo............: Atualizacao
	Objetivo..........: Criar um nova Atualizacao e j� atualizar o Status da Tarefa
	EX................: EXEC [dbo].[SP_CriarAtualizacao] 'Greve dos banc�rios', 1, 2, 3
	*/

		BEGIN
		INSERT INTO Atualizacao
		(Motivo, Fk_Tarefa, Fk_Usuario, Fk_Status_Tarefa) 
		VALUES
		(@Motivo, @Fk_Tarefa, @Fk_Usuario, @Status_Tarefa)
	END
