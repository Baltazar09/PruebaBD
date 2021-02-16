CREATE TABLE [dbo].[t_ges_encargado_transporte] (
    [PK_ENCARGADO_TRANSPORTE] INT         NOT NULL,
    [NOMBRE]                  NCHAR (100) NOT NULL,
    [P_APELLIDO]              NCHAR (100) NOT NULL,
    [S_APELLIDO]              NCHAR (100) NULL,
    [IDENTIFICACION]          NCHAR (100) NOT NULL,
    [P_TELEFONO]              NCHAR (100) NOT NULL,
    [S_TELEFONO]              NCHAR (100) NULL,
    [STATUS]                  BIT         NOT NULL,
    CONSTRAINT [PK_t_ges_encargado_transporte] PRIMARY KEY CLUSTERED ([PK_ENCARGADO_TRANSPORTE] ASC)
);

