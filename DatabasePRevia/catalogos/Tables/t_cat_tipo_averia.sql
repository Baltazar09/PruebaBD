CREATE TABLE [catalogos].[t_cat_tipo_averia] (
    [PK_TIPO_AVERIA] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]    NVARCHAR (100) NULL,
    [STATUS]         BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_AVERIA] PRIMARY KEY CLUSTERED ([PK_TIPO_AVERIA] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_averia', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_averia', @level2type = N'COLUMN', @level2name = N'PK_TIPO_AVERIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre / Descripción del Tipo Avería', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_averia', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

