IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_CriarTarefa]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_CriarTarefa]
GO
CREATE PROCEDURE [dbo].[SP_CriarTarefa]
	@Descricao VARCHAR(300),
	@DataLimite DATETIME,
	@DataConclusao DATETIME,
	
	@IdGestor SMALLINT,
	@IdSubordinado SMALLINT,
	@IdStatusTarefa TINYINT

AS
	/* 
	Documentação
	Módulo............: Tarefa
	Objetivo..........: Criar uma tarefa
	EX................: EXEC [dbo].[SP_CriarTarefa] 'Fritar massas de pastel', '20201215 02:30:00 PM', NULL, 1, 2, 2 
	*/
	BEGIN
		INSERT INTO Tarefa
		(Descricao, DataLimite, DataConclusao, IdGestor, IdSubordinado, IdStatusTarefa)
		VALUES
		(@Descricao, @DataLimite, @DataConclusao, @IdGestor, @IdSubordinado, @IdStatusTarefa)	

	END
