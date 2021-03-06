﻿CREATE TABLE [gestiones].[t_ges_suspencion_servicio] (
    [PK_SUSPENCION_SERVICIO]    INT             NOT NULL,
    [FK_TIPO_DATOS_SOLICITANTE] INT             NULL,
    [NOMBRE]                    NVARCHAR (15)   NULL,
    [PRIMERAPELLIDO]            NVARCHAR (15)   NULL,
    [SEGUNDOAPELLIDO]           NVARCHAR (15)   NULL,
    [FK_CALIDAD_SOLICITANTE]    INT             NULL,
    [FK_TIPO_IDENTIFICACION]    INT             NULL,
    [CEDULA_FISICA]             NVARCHAR (10)   NULL,
    [DIMEX]                     NVARCHAR (12)   NULL,
    [PASAPORTE]                 NVARCHAR (20)   NULL,
    [FK_TIPO_ACCION]            INT             NULL,
    [NIS]                       NVARCHAR (7)    NULL,
    [JUSTIFICACION_SOLICITUD]   NVARCHAR (1000) NULL,
    [URL_DOC_IDENTIFICACION]    NVARCHAR (250)  NULL,
    [STATUS]                    BIT             NULL,
    CONSTRAINT [PK_t_ges_suspencion_servicio] PRIMARY KEY CLUSTERED ([PK_SUSPENCION_SERVICIO] ASC),
    CONSTRAINT [FK_t_ges_suspencion_servicio_t_cat_calidad_solicitante] FOREIGN KEY ([FK_CALIDAD_SOLICITANTE]) REFERENCES [catalogos].[t_cat_calidad_solicitante] ([PK_CALIDAD_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_suspencion_servicio_t_cat_tipo_accion] FOREIGN KEY ([FK_TIPO_ACCION]) REFERENCES [catalogos].[t_cat_tipo_accion] ([PK_TIPO_ACCION]),
    CONSTRAINT [FK_t_ges_suspencion_servicio_t_cat_tipo_datos_solicitante] FOREIGN KEY ([FK_TIPO_DATOS_SOLICITANTE]) REFERENCES [catalogos].[t_cat_tipo_datos_solicitante] ([PK_TIPO_DATOS_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_suspencion_servicio_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_suspencion_servicio_t_ges_gestion] FOREIGN KEY ([PK_SUSPENCION_SERVICIO]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Direccion fisica del archivo adjunto', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'URL_DOC_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo Apellido del cliente', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'SEGUNDOAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'primer apellido del cliente', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'PRIMERAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'PK_SUSPENCION_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero de pasaporte del cliente', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'PASAPORTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del cliente', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero del suministro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Justificacion de la gestion', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'JUSTIFICACION_SOLICITUD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada tipo identificacion', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada datos de la solicitud', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_DATOS_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada tipo accion', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'FK_TIPO_ACCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada calidad del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'FK_CALIDAD_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificacion del cliente extrajero', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'DIMEX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cedula de un cliente fisico ', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_suspencion_servicio', @level2type = N'COLUMN', @level2name = N'CEDULA_FISICA';

