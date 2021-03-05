CREATE TABLE [catalogos].[t_cat_tipo_identificacion] (
    [PK_TIPO_IDENTIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]            NVARCHAR (100) NULL,
    [STATUS]                 BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_IDENTIFICACION] PRIMARY KEY CLUSTERED ([PK_TIPO_IDENTIFICACION] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_identificacion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la Tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_identificacion', @level2type = N'COLUMN', @level2name = N'PK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_identificacion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

