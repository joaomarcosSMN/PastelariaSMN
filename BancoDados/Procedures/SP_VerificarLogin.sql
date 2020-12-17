IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_VericarLogin]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_VericarLogin]
GO
CREATE PROCEDURE [dbo].[SP_VericarLogin]
    @Email VARCHAR(254)

AS
	/* 
	Documentação
	Módulo............: Usuario, Email
	Objetivo..........: Consultar o login de acordo com a coluna Usuario.Senha e Email.EnderecoEmail
	EX................: EXEC [dbo].[SP_VericarLogin] 'joaozin@email.com'
	*/
	BEGIN
		SELECT EnderecoEmail AS Email, Senha AS SenhaHash FROM Email AS E
        INNER JOIN Usuario AS U
        ON E.IdUsuario = U.IdUsuario
		WHERE E.EnderecoEmail = @Email
	END
