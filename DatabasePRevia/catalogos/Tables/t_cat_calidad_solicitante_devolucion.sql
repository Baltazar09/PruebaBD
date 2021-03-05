CREATE TABLE [catalogos].[t_cat_calidad_solicitante_devolucion] (
    [PK_CALIDAD_SOLICITANTE_DEVOLUCION] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]                            NVARCHAR (100) NULL,
    [STATUS]                            BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_cat_calidad_solicitante_devolucion] PRIMARY KEY CLUSTERED ([PK_CALIDAD_SOLICITANTE_DEVOLUCION] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_calidad_solicitante_devolucion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre o Descripción de la calidad del solicitante gestión devolución', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_calidad_solicitante_devolucion', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_calidad_solicitante_devolucion', @level2type = N'COLUMN', @level2name = N'PK_CALIDAD_SOLICITANTE_DEVOLUCION';

