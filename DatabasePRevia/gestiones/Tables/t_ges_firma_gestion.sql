CREATE TABLE [gestiones].[t_ges_firma_gestion] (
    [PK_FIRMA_GESTION]       INT            NOT NULL,
    [NOMBRE]                 NVARCHAR (20)  NULL,
    [PAPELLIDO]              NVARCHAR (20)  NULL,
    [SAPELLIDO]              NVARCHAR (20)  NULL,
    [FK_TIPO_IDENTIFICACION] INT            NULL,
    [IDENTIFICACION]         NVARCHAR (50)  NULL,
    [FIRMADIGITAL]           NVARCHAR (250) NULL,
    [URL_IDENTIFICACION]     NVARCHAR (250) NULL,
    [STATUS]                 BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_GES_FIRMA_GESTION] PRIMARY KEY CLUSTERED ([PK_FIRMA_GESTION] ASC),
    CONSTRAINT [FK_T_GES_FIRMA_GESTION_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_GES_FIRMA_GESTION_T_GES_GESTION] FOREIGN KEY ([PK_FIRMA_GESTION]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'url de la imagen de la identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'URL_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'SAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'PK_FIRMA_GESTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'PAPELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre completo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Respuesta o firma digital', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_firma_gestion', @level2type = N'COLUMN', @level2name = N'FIRMADIGITAL';

