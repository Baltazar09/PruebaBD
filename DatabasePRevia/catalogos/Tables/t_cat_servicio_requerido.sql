CREATE TABLE [catalogos].[t_cat_servicio_requerido] (
    [PK_SERVICIO_REQUERIDO] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]           NVARCHAR (100) NULL,
    [STATUS]                BIT            CONSTRAINT [DF_t_cat_servicio_requerido_STATUS] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_cat_servicio_requerido] PRIMARY KEY CLUSTERED ([PK_SERVICIO_REQUERIDO] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_servicio_requerido', @level2type = N'COLUMN', @level2name = N'PK_SERVICIO_REQUERIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del Tipo de Servicio Requerido', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_servicio_requerido', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_servicio_requerido', @level2type = N'COLUMN', @level2name = N'STATUS';

