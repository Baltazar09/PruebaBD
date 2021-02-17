CREATE TABLE [dbo].[t_cat_tipo_datos_solicitante] (
    [PK_TIPO_DATOS_SOLICITANTE] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]               NVARCHAR (250) NULL,
    [STATUS] BIT NULL, 
    CONSTRAINT [PK_t_cat_datos_solicitante] PRIMARY KEY CLUSTERED ([PK_TIPO_DATOS_SOLICITANTE] ASC)
);

