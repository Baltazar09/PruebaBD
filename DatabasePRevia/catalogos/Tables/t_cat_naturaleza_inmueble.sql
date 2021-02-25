CREATE TABLE [catalogos].[t_cat_naturaleza_inmueble] (
    [PK_NATURALEZA_INMUEBLE] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]            NVARCHAR (100) NULL,
    [STATUS]                 BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_T_CAT_NATURALEZA_INMUEBLE] PRIMARY KEY CLUSTERED ([PK_NATURALEZA_INMUEBLE] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_naturaleza_inmueble', @level2type = N'COLUMN', @level2name = N'PK_NATURALEZA_INMUEBLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción de la Naturaleza del inmueble', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_naturaleza_inmueble', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_naturaleza_inmueble', @level2type = N'COLUMN', @level2name = N'STATUS';

