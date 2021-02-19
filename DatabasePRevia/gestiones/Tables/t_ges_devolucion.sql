CREATE TABLE [gestiones].[t_ges_devolucion] (
    [PK_DEVOLUCION]                     INT             NOT NULL,
    [FK_TIPO_IDENTIFICACION]            INT             NULL,
    [FK_TIPO_TITULAR_INMUEBLE]          INT             NULL,
    [FK_CALIDAD_SOLICITANTE_DEVOLUCION] INT             NULL,
    [NOMBRE]                            NVARCHAR (20)   NULL,
    [P_APELLIDO]                        NVARCHAR (20)   NULL,
    [S_APELLIDO]                        NVARCHAR (20)   NULL,
    [NIS]                               NVARCHAR (7)    NULL,
    [NOMBRE_TITULAR]                    NVARCHAR (50)   NULL,
    [URL_IDENTIFICACION]                NVARCHAR (250) NULL,
    [STATUS]                            BIT             NOT NULL,
    CONSTRAINT [PK_T_GES_DEVOLUCION] PRIMARY KEY CLUSTERED ([PK_DEVOLUCION] ASC),
    CONSTRAINT [FK_T_CAT_CALIDAD_SOLICITANTE_DEVOLUCION_T_CAT_CALIDAD_SOLICITANTE] FOREIGN KEY ([FK_CALIDAD_SOLICITANTE_DEVOLUCION]) REFERENCES [catalogos].[t_cat_calidad_solicitante_devolucion] ([PK_CALIDAD_SOLICITANTE_DEVOLUCION]),
    CONSTRAINT [FK_T_GES_DEVOLUCION_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_GES_DEVOLUCION_T_GES_GESTION] FOREIGN KEY ([PK_DEVOLUCION]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'S_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'PK_DEVOLUCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer nombre', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'P_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del titular de servicio', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'NOMBRE_TITULAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre completo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Codigo NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'url de la imagen de la identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'URL_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de titular del inmueble', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'FK_TIPO_TITULAR_INMUEBLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de solicitante devolución', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_devolucion', @level2type = N'COLUMN', @level2name = N'FK_CALIDAD_SOLICITANTE_DEVOLUCION';

