CREATE TABLE [dbo].[t_ges_reanudacion_servicio] (
    [PK_REANUDACION_SERVICIO]   INT             NOT NULL,
    [FK_TIPO_DATOS_SOLICITANTE] INT             NULL,
    [NOMBRE]                    NVARCHAR (15)   NULL,
    [PRIMERAPELLIDO]            NVARCHAR (15)   NULL,
    [SEGUNDOAPELLIDO]           NVARCHAR (15)   NULL,
    [FK_CALIDAD_SOLICITANTE]    INT             NULL,
    [FK_TIPO_IDENTIFICACION]    INT             NULL,
    [CEDULA_FISICA]             NVARCHAR (10)   NULL,
    [DIMEX]                     NVARCHAR (12)   NULL,
    [PASAPORTE]                 NVARCHAR (20)   NULL,
    [NIS]                       NVARCHAR (7)    NULL,
    [JUSTIFICACION_SOLICITUD]   NVARCHAR (1000) NULL,
    [URL_DOC_IDENTIFICACION]    NVARCHAR (250)  NULL,
    [STATUS]                    BIT             NULL,
    CONSTRAINT [PK_t_ges_reanudacion_servicio] PRIMARY KEY CLUSTERED ([PK_REANUDACION_SERVICIO] ASC),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_calidad_solicitante] FOREIGN KEY ([FK_CALIDAD_SOLICITANTE]) REFERENCES [dbo].[t_cat_calidad_solicitante] ([PK_CALIDAD_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_tipo_datos_solicitante] FOREIGN KEY ([FK_TIPO_DATOS_SOLICITANTE]) REFERENCES [dbo].[t_cat_tipo_datos_solicitante] ([PK_TIPO_DATOS_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [dbo].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_ges_gestion] FOREIGN KEY ([PK_REANUDACION_SERVICIO]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'URL_DOC_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'SEGUNDOAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'PRIMERAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'PK_REANUDACION_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero de pasaporte de solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'PASAPORTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero del suministro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Justificacion de la gestion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'JUSTIFICACION_SOLICITUD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada tipo identificacion', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada datos solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_DATOS_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada calidad del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'FK_CALIDAD_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificacion de solicitante extranejro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'DIMEX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'identificacion de solicitante fisico', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_reanudacion_servicio', @level2type = N'COLUMN', @level2name = N'CEDULA_FISICA';

