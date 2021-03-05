CREATE TABLE [dbo].[t_cat_objetivo_constancia] (
    [PK_OBJETIVO_CONSTANCIA] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]            NVARCHAR (250) NULL,
    [STATUS]                 BIT            NULL,
    CONSTRAINT [PK_t_cat_objetivo_constancia] PRIMARY KEY CLUSTERED ([PK_OBJETIVO_CONSTANCIA] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_objetivo_constancia', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_objetivo_constancia', @level2type = N'COLUMN', @level2name = N'PK_OBJETIVO_CONSTANCIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar los elementos de las listas', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_objetivo_constancia', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

