CREATE TABLE [dbo].[t_cat_tipo_accion] (
    [PK_TIPO_ACCION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]    NVARCHAR (100) NULL,
    [STATUS]         BIT            NULL,
    CONSTRAINT [PK_t_cat_tipo_accion] PRIMARY KEY CLUSTERED ([PK_TIPO_ACCION] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_accion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_accion', @level2type = N'COLUMN', @level2name = N'PK_TIPO_ACCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar los elementos de las listas', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_accion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

