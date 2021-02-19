CREATE TABLE [catalogos].[t_cat_tipo_uso] (
    [PK_TIPO_USO] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION] NVARCHAR (100) NULL,
    [STATUS]      BIT            NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_USO] PRIMARY KEY CLUSTERED ([PK_TIPO_USO] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_uso', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_uso', @level2type = N'COLUMN', @level2name = N'PK_TIPO_USO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción / Nombre del Tipo de uso del Proyecto', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_uso', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

