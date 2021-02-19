CREATE TABLE [catalogos].[t_cat_pretension] (
    [PK_PRETENSION] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]        NVARCHAR (100) NULL,
    [STATUS]        BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_CAT_PRETENSION] PRIMARY KEY CLUSTERED ([PK_PRETENSION] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_pretension', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_pretension', @level2type = N'COLUMN', @level2name = N'PK_PRETENSION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre / Descripción de la pretensión ', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_pretension', @level2type = N'COLUMN', @level2name = N'NOMBRE';

