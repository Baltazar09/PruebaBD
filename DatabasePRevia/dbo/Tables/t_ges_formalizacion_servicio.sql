CREATE TABLE [dbo].[t_ges_formalizacion_servicio] (
    [PK_FORMALIZACION_SERVICIO] INT            NOT NULL,
    [OBSERVACIONES]             NVARCHAR (500) NULL,
    [URL_CERTIFICACION_PODER]   NVARCHAR (250) NULL,
    [URL_CEDULA_FRENTE]         NVARCHAR (250) NULL,
    [URL_CEDULA_ATRAS]          NVARCHAR (250) NULL,
    [AUTORIZACION_ABOGADO]      BIT            NULL,
    [STATUS]                    BIT            NULL,
    CONSTRAINT [PK_t_ges_formalizacion_servicio] PRIMARY KEY CLUSTERED ([PK_FORMALIZACION_SERVICIO] ASC),
    CONSTRAINT [FK_t_ges_formalizacion_servicio_t_ges_gestion] FOREIGN KEY ([PK_FORMALIZACION_SERVICIO]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar la direccion fisica de la certificacion de poder del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'URL_CERTIFICACION_PODER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar la direccion fisica del frente de la identificacion del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'URL_CEDULA_FRENTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar la direccion fisica del reverso de la identificacion del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'URL_CEDULA_ATRAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estatus del registro en la tabla 0 inactivo 1 activo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'PK_FORMALIZACION_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para escribir particularidades de la solicitud si las hay', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'OBSERVACIONES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Campo para guardar la direccion fisica de la autorizacion del solicitante', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_ges_formalizacion_servicio', @level2type = N'COLUMN', @level2name = N'AUTORIZACION_ABOGADO';

