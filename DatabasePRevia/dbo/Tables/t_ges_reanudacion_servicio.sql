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
    [NIS]                       INT             NULL,
    [JUSTIFICACION_SOLICITUD]   NVARCHAR (1000) NULL,
    [URL_DOC_IDENTIFICACION]    NVARCHAR (250)  NULL,
    [STATUS]                    BIT             NULL,
    CONSTRAINT [PK_t_ges_reanudacion_servicio] PRIMARY KEY CLUSTERED ([PK_REANUDACION_SERVICIO] ASC),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_calidad_solicitante] FOREIGN KEY ([FK_CALIDAD_SOLICITANTE]) REFERENCES [dbo].[t_cat_calidad_solicitante] ([PK_CALIDAD_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_tipo_datos_solicitante] FOREIGN KEY ([FK_TIPO_DATOS_SOLICITANTE]) REFERENCES [dbo].[t_cat_tipo_datos_solicitante] ([PK_TIPO_DATOS_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [dbo].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_reanudacion_servicio_t_ges_gestion] FOREIGN KEY ([PK_REANUDACION_SERVICIO]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

