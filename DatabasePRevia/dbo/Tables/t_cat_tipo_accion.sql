CREATE TABLE [dbo].[t_cat_tipo_accion] (
    [PK_TIPO_ACCION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]    NVARCHAR (100) NULL,
    [STATUS]         BIT            NULL,
    CONSTRAINT [PK_t_cat_tipo_accion] PRIMARY KEY CLUSTERED ([PK_TIPO_ACCION] ASC)
);

