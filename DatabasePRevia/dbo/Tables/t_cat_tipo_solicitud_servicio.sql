CREATE TABLE [dbo].[t_cat_tipo_solicitud_servicio] (
    [PK_TIPO_SOLICITUD_SERVICIO] INT            IDENTITY (1, 1) NOT NULL,
    [PK_SERVICIO_REQUERIDO]      INT            NOT NULL,
    [DESCRIPCION]                NVARCHAR (100) NULL,
    [STATUS]                     BIT            CONSTRAINT [DF_t_cat_tipo_solicitud_servicio_STATUS] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_CAT_TIPO_SOLICITUD_SERVICIO] PRIMARY KEY CLUSTERED ([PK_TIPO_SOLICITUD_SERVICIO] ASC, [PK_SERVICIO_REQUERIDO] ASC),
    CONSTRAINT [FK_T_CAT_TIPO_SOLICITUD_SERVICIO_T_CAT_SERVICIO_REQUERIDO] FOREIGN KEY ([PK_SERVICIO_REQUERIDO]) REFERENCES [dbo].[t_cat_servicio_requerido] ([PK_SERVICIO_REQUERIDO])
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de solicitud de servicio', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_solicitud_servicio', @level2type = N'COLUMN', @level2name = N'PK_TIPO_SOLICITUD_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de Servicio requerido', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_solicitud_servicio', @level2type = N'COLUMN', @level2name = N'PK_SERVICIO_REQUERIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción del tipo de solicitud', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_solicitud_servicio', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_tipo_solicitud_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';

