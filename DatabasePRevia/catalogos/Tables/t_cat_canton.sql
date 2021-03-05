CREATE TABLE [catalogos].[t_cat_canton] (
    [PK_CANTON]    INT            IDENTITY (1, 1) NOT NULL,
    [FK_PROVINCIA] INT            NOT NULL,
    [NOMBRE]       NVARCHAR (100) NOT NULL,
    [STATUS]       BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_t_cat_canton_1] PRIMARY KEY CLUSTERED ([PK_CANTON] ASC),
    CONSTRAINT [PK_T_CAT_CANTON_T_CAT_PROVINCIA] FOREIGN KEY ([FK_PROVINCIA]) REFERENCES [catalogos].[t_cat_provincia] ([PK_PROVINCIA])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_canton', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_canton', @level2type = N'COLUMN', @level2name = N'PK_CANTON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre / Descripción', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_canton', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la Provincia', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_canton', @level2type = N'COLUMN', @level2name = N'FK_PROVINCIA';

