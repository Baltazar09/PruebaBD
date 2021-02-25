CREATE TABLE [catalogos].[t_cat_forma_cancelacion] (
    [PK_FORMA_CANCELACION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]          NVARCHAR (100) NULL,
    [STATUS]               BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_T_CAT_FORMA_CANCELACION] PRIMARY KEY CLUSTERED ([PK_FORMA_CANCELACION] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_forma_cancelacion', @level2type = N'COLUMN', @level2name = N'PK_FORMA_CANCELACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción de la Forma de liquidación', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_forma_cancelacion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_forma_cancelacion', @level2type = N'COLUMN', @level2name = N'STATUS';

