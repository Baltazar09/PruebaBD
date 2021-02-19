CREATE TABLE [gestiones].[t_ges_arreglo_pago] (
    [PK_ARREGLO_PAGO]        INT            NOT NULL,
    [FK_TIPO_IDENTIFICACION] INT            NULL,
    [NOMBRE_USUARIO]         NVARCHAR (100) NULL,
    [NOMBRE_SOLICITANTE]     NVARCHAR (15)  NULL,
    [P_APELLIDO_SOLICITANTE] NVARCHAR (15)  NULL,
    [S_APELLIDO_SOLICITANTE] NVARCHAR (15)  NULL,
    [EMAIL]                  NVARCHAR (100) NULL,
    [CELULAR]                NVARCHAR (9)   NULL,
    [TELEFONO]               NVARCHAR (9)   NULL,
    [TIPOPERSONA]            CHAR (1)       NOT NULL,
    [OBSERVACIONES]          NVARCHAR (500) NULL,
    [URL_IDENTIFICACION]     NVARCHAR (250) NULL,
    [STATUS]                 BIT            NOT NULL,
    CONSTRAINT [PK_T_GES_ARREGLO_PAGO] PRIMARY KEY CLUSTERED ([PK_ARREGLO_PAGO] ASC),
    CONSTRAINT [CHK_TIPOPERSONA_T_GES_ARREGLO_PAGO] CHECK ([TIPOPERSONA]='J' OR [TIPOPERSONA]='F'),
    CONSTRAINT [FK_T_GES_ARREGLO_PAGO_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_GES_ARREGLO_PAGO_T_GES_GESTION] FOREIGN KEY ([PK_ARREGLO_PAGO]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'URL de la imagen de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'URL_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tipo de Persona (J) Judicial o (F) Física', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'TIPOPERSONA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'número de teléfono', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'TELEFONO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'S_APELLIDO_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'PK_ARREGLO_PAGO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'P_APELLIDO_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Observaciones del arreglo pago', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'OBSERVACIONES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del usuario que registra', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'NOMBRE_USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del Solicitante', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'NOMBRE_SOLICITANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'correo electrónico ', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'EMAIL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'número de celular', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_arreglo_pago', @level2type = N'COLUMN', @level2name = N'CELULAR';

