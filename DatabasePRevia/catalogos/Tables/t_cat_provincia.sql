CREATE TABLE [catalogos].[t_cat_provincia] (
    [PK_PROVINCIA] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]       NVARCHAR (100) NOT NULL,
    [STATUS]       BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_T_CAT_PROVINCIA] PRIMARY KEY CLUSTERED ([PK_PROVINCIA] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_provincia', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_provincia', @level2type = N'COLUMN', @level2name = N'PK_PROVINCIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de la Provincia', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_provincia', @level2type = N'COLUMN', @level2name = N'NOMBRE';

