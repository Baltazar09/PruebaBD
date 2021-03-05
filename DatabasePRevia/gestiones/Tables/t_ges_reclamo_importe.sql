CREATE TABLE [gestiones].[t_ges_reclamo_importe] (
    [PK_RECLAMO_IMPORTE]     INT             NOT NULL,
    [FK_TIPO_IDENTIFICACION] INT             NULL,
    [FK_CALIDAD_SOLICITANTE] INT             NULL,
    [NOMBRE]                 NVARCHAR (20)   NULL,
    [P_APELLIDO]             NVARCHAR (20)   NULL,
    [S_APELLIDO]             NVARCHAR (20)   NULL,
    [IDENTIFICACION]         NVARCHAR (20)   NULL,
    [NIS]                    NVARCHAR (7)    NULL,
    [NOMBRE_TITULAR]         NVARCHAR (50)   NULL,
    [FACTURAS_RECLAMADAS]    NVARCHAR (100)  NULL,
    [SOLICITUD]              NVARCHAR (1000) NULL,
    [OTRO]                   NVARCHAR (100)  NULL,
    [STATUS]                 BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_GES_RECLAMO_IMPORTE] PRIMARY KEY CLUSTERED ([PK_RECLAMO_IMPORTE] ASC),
    CONSTRAINT [FK_T_GES_RECLAMO_IMPORTE_T_CAT_CALIDAD_SOLICITANTE] FOREIGN KEY ([FK_CALIDAD_SOLICITANTE]) REFERENCES [catalogos].[t_cat_calidad_solicitante] ([PK_CALIDAD_SOLICITANTE]),
    CONSTRAINT [FK_T_GES_RECLAMO_IMPORTE_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_GES_RECLAMO_IMPORTE_T_GES_GESTION] FOREIGN KEY ([PK_RECLAMO_IMPORTE]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción de la solicitud', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'SOLICITUD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'S_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'PK_RECLAMO_IMPORTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'P_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Otras datos', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'OTRO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del titular del servicio', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'NOMBRE_TITULAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre completo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO



GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la calidad del solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'FK_CALIDAD_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'facturas reclamadas', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe', @level2type = N'COLUMN', @level2name = N'FACTURAS_RECLAMADAS';

