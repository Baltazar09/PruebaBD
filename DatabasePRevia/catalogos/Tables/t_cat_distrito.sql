CREATE TABLE [catalogos].[t_cat_distrito] (
    [PK_DISTRITO]  INT            IDENTITY (1, 1) NOT NULL,
    [FK_CANTON]    INT            NOT NULL,
    [PK_PROVINCIA] INT            NOT NULL,
    [NOMBRE]       NVARCHAR (100) NOT NULL,
    [STATUS]       BIT            NOT NULL,
    CONSTRAINT [PK_t_cat_distrito_1] PRIMARY KEY CLUSTERED ([PK_DISTRITO] ASC),
    CONSTRAINT [FK_t_cat_distrito_t_cat_canton] FOREIGN KEY ([FK_CANTON]) REFERENCES [catalogos].[t_cat_canton] ([PK_CANTON])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_distrito', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la Provincia', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_distrito', @level2type = N'COLUMN', @level2name = N'PK_PROVINCIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del distrito', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_distrito', @level2type = N'COLUMN', @level2name = N'PK_DISTRITO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del Distrito', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_distrito', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del Canton', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_distrito', @level2type = N'COLUMN', @level2name = N'FK_CANTON';

