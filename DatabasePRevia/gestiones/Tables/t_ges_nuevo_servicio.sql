CREATE TABLE [gestiones].[t_ges_nuevo_servicio] (
    [PK_NUEVO_SERVICIO]          INT           NOT NULL,
    [PK_SERVICIO_REQUERIDO]      INT           NOT NULL,
    [FK_TIPO_SOLICITUD_SERVICIO] INT           NULL,
    [FK_FORMA_CANCELACION]       INT           NULL,
    [AGUA_RESIDUAL]              BIT           NULL,
    [TIENE_NIS]                  BIT           NULL,
    [NIS]                        NVARCHAR (7)  NULL,
    [CODIGO_APC]                 INT           NULL,
    [NO_DISPONIBILIDAD_PREVIA]   NVARCHAR (20) NULL,
    [STATUS]                     BIT           NOT NULL,
    CONSTRAINT [PK_T_GES_NUEVO_SERVICIO] PRIMARY KEY CLUSTERED ([PK_NUEVO_SERVICIO] ASC, [PK_SERVICIO_REQUERIDO] ASC),
    CONSTRAINT [FK_T_GES_NUEVO_SERVICIO_T_CAT_FORMA_CANCELACION] FOREIGN KEY ([FK_FORMA_CANCELACION]) REFERENCES [catalogos].[t_cat_forma_cancelacion] ([PK_FORMA_CANCELACION]),
    CONSTRAINT [FK_T_GES_NUEVO_SERVICIO_T_CAT_SERVICIO_REQUERIDO] FOREIGN KEY ([PK_SERVICIO_REQUERIDO]) REFERENCES [catalogos].[t_cat_servicio_requerido] ([PK_SERVICIO_REQUERIDO]),
    CONSTRAINT [FK_T_GES_NUEVO_SERVICIO_T_CAT_TIPO_SOLICITUD_SERVICIO] FOREIGN KEY ([FK_TIPO_SOLICITUD_SERVICIO], [PK_SERVICIO_REQUERIDO]) REFERENCES [catalogos].[t_cat_tipo_solicitud_servicio] ([PK_TIPO_SOLICITUD_SERVICIO], [PK_SERVICIO_REQUERIDO]),
    CONSTRAINT [FK_t_ges_nuevo_servicio_t_ges_gestion] FOREIGN KEY ([PK_NUEVO_SERVICIO]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'indica si tiene NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'TIENE_NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del servicio requerido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'PK_SERVICIO_REQUERIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'PK_NUEVO_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de disponibilidad previa', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'NO_DISPONIBILIDAD_PREVIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Codigo NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de solicitud de servicio', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_SOLICITUD_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la forma de cancelación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'FK_FORMA_CANCELACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Codigo APC', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'CODIGO_APC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si tiene agua residual', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_nuevo_servicio', @level2type = N'COLUMN', @level2name = N'AGUA_RESIDUAL';

