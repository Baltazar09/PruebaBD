CREATE TABLE [catalogos].[t_cat_tipo_servicio] (
    [PK_TIPO_SERVICIO] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]      NVARCHAR (100) NULL,
    [STATUS]           BIT            NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_SERVICIO] PRIMARY KEY CLUSTERED ([PK_TIPO_SERVICIO] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_servicio', @level2type = N'COLUMN', @level2name = N'PK_TIPO_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción / Nombre del tipo de Servicio', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_servicio', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

