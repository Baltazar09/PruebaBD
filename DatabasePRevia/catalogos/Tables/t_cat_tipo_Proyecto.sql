CREATE TABLE [catalogos].[t_cat_tipo_Proyecto] (
    [PK_TIPO_PROYECTO] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]      NVARCHAR (100) NULL,
    [STATUS]           BIT            CONSTRAINT [DF_t_cat_tipo_Proyecto_STATUS] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_PROYECTO] PRIMARY KEY CLUSTERED ([PK_TIPO_PROYECTO] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_Proyecto', @level2type = N'COLUMN', @level2name = N'PK_TIPO_PROYECTO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del tipo de proyecto que desea realizar', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_Proyecto', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_tipo_Proyecto', @level2type = N'COLUMN', @level2name = N'STATUS';

