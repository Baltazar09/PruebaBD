CREATE TABLE [gestiones].[t_ges_proyecto] (
    [PK_PROYECTO]                   INT             NOT NULL,
    [FK_SUBCLASIFICACION]           INT             NULL,
    [FK_CATEGORIA_SUBCLASIFICACION] INT             NULL,
    [AREA]                          INT             NULL,
    [NIVELES]                       INT             NULL,
    [CANTIDAD]                      INT             NULL,
    [CAUDAL]                        INT             NULL,
    [FK_TIPO_SERVICIO]              INT             NULL,
    [FK_TIPO_USO]                   INT             NULL,
    [TIPOPROYECTO]                  CHAR (1)        NULL,
    [OTRO]                          NVARCHAR (250)  NULL,
    [DESCRIPCION]                   NVARCHAR (1000) NULL,
    [STATUS]                        BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_ges_proyecto] PRIMARY KEY CLUSTERED ([PK_PROYECTO] ASC),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_categoria_subclasificacion] FOREIGN KEY ([FK_CATEGORIA_SUBCLASIFICACION], [FK_SUBCLASIFICACION]) REFERENCES [catalogos].[t_cat_categoria_subclasificacion] ([PK_CATEGORIA_SUBCLASIFICACION], [PK_SUBCLASIFICACION]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_subclasificacion] FOREIGN KEY ([FK_SUBCLASIFICACION]) REFERENCES [catalogos].[t_cat_subclasificacion] ([PK_SUBCLASIFICACION]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_tipo_servicio] FOREIGN KEY ([FK_TIPO_SERVICIO]) REFERENCES [catalogos].[t_cat_tipo_servicio] ([PK_TIPO_SERVICIO]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_tipo_uso] FOREIGN KEY ([FK_TIPO_USO]) REFERENCES [catalogos].[t_cat_tipo_uso] ([PK_TIPO_USO]),
    CONSTRAINT [FK_t_ges_proyecto_t_ges_gestion] FOREIGN KEY ([PK_PROYECTO]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tipo proyecto (Anteproyecto,Proyecto o Modificación)', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'TIPOPROYECTO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'PK_PROYECTO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Otras señas', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'OTRO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Niveles constructivos', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'NIVELES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de uso', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'FK_TIPO_USO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de servicio', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'FK_TIPO_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la subclasificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'FK_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la categoria de subclasificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'FK_CATEGORIA_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción del Proyecto', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Caudal requerido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'CAUDAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cantidad de apartamentos', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'CANTIDAD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Area construcción', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_proyecto', @level2type = N'COLUMN', @level2name = N'AREA';

