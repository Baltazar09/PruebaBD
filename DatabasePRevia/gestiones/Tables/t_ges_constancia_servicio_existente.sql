CREATE TABLE [gestiones].[t_ges_constancia_servicio_existente] (
    [PK_CONSTANCIA_SERVICIO_EXISTENTE]  INT            NOT NULL,
    [NIS]                               NVARCHAR (7)   NULL,
    [FK_NATURALEZA_INMUEBLE]            INT            NULL,
    [FK_TITULO_PROPIEDAD]               INT            NULL,
    [FOLIO_MATRICULA]                   NVARCHAR (20)  NULL,
    [NODOCUMENTO]                       NVARCHAR (20)  NULL,
    [FK_TIPO_DATOS_SOLICITANTE]         INT            NULL,
    [NOMBRE]                            NVARCHAR (15)  NULL,
    [PRIMERAPELLIDO]                    NVARCHAR (15)  NULL,
    [SEGUNDOAPELLIDO]                   NVARCHAR (15)  NULL,
    [FK_TIPO_IDENTIFICACION]            INT            NULL,
    [CEDULA_FISICA]                     NVARCHAR (10)  NULL,
    [DIMEX]                             NVARCHAR (12)  NULL,
    [PASAPORTE]                         NVARCHAR (20)  NULL,
    [TELEFONO1]                         NVARCHAR (9)   NOT NULL,
    [TELEFONO2]                         NVARCHAR (9)   NULL,
    [EMAIL]                             NVARCHAR (100) NULL,
    [RAZON_SOCIAL]                      NVARCHAR (50)  NULL,
    [CEDULA_JURIDICA]                   NVARCHAR (15)  NULL,
    [FK_OBJETIVO_CONSTANCIA]            INT            NULL,
    [JUSTIFICACION_OBJETIVO_CONSTANCIA] NVARCHAR (250) NULL,
    [URL_DOC_IDENTIFICACION]            NVARCHAR (250) NULL,
    [STATUS]                            BIT            NULL,
    CONSTRAINT [PK_t_ges_constancia_servicio_existente] PRIMARY KEY CLUSTERED ([PK_CONSTANCIA_SERVICIO_EXISTENTE] ASC),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_cat_naturaleza_inmueble] FOREIGN KEY ([FK_NATURALEZA_INMUEBLE]) REFERENCES [catalogos].[t_cat_naturaleza_inmueble] ([PK_NATURALEZA_INMUEBLE]),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_cat_objetivo_constancia] FOREIGN KEY ([FK_OBJETIVO_CONSTANCIA]) REFERENCES [catalogos].[t_cat_objetivo_constancia] ([PK_OBJETIVO_CONSTANCIA]),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_cat_tipo_datos_solicitante] FOREIGN KEY ([FK_TIPO_DATOS_SOLICITANTE]) REFERENCES [catalogos].[t_cat_tipo_datos_solicitante] ([PK_TIPO_DATOS_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_cat_titulo_propiedad] FOREIGN KEY ([FK_TITULO_PROPIEDAD]) REFERENCES [catalogos].[t_cat_titulo_propiedad] ([PK_TITULO_PROPIEDAD]),
    CONSTRAINT [FK_t_ges_constancia_servicio_existente_t_ges_gestion] FOREIGN KEY ([PK_CONSTANCIA_SERVICIO_EXISTENTE]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Direccion fisica de la identificacion del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'URL_DOC_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'telefono 2 del solcitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'TELEFONO2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'telefono del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'TELEFONO1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'SEGUNDOAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de solicitante juridico', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'RAZON_SOCIAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Apellido del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'PRIMERAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'PK_CONSTANCIA_SERVICIO_EXISTENTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero de pasaporte del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'PASAPORTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero de documento', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'NODOCUMENTO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero del suministro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Junstificacion de la solicitud', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'JUSTIFICACION_OBJETIVO_CONSTANCIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Numero de folio o matricula', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FOLIO_MATRICULA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada titulo de la propiedad', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FK_TITULO_PROPIEDAD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada de tipo de identificacion', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada datos solicitados', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FK_TIPO_DATOS_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla objetivo de la constancia', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FK_OBJETIVO_CONSTANCIA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada naturaleza del inmueble', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'FK_NATURALEZA_INMUEBLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Correo electronico del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'EMAIL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificacion de solicitante extranjero', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'DIMEX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cedula juridica', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'CEDULA_JURIDICA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificacion fisica del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_constancia_servicio_existente', @level2type = N'COLUMN', @level2name = N'CEDULA_FISICA';

