CREATE TABLE [dbo].[t_ges_proyecto] (
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
    CONSTRAINT [PK_t_ges_proyecto] PRIMARY KEY CLUSTERED ([PK_PROYECTO] ASC),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_categoria_subclasificacion] FOREIGN KEY ([FK_CATEGORIA_SUBCLASIFICACION], [FK_SUBCLASIFICACION]) REFERENCES [dbo].[t_cat_categoria_subclasificacion] ([PK_CATEGORIA_SUBCLASIFICACION], [PK_SUBCLASIFICACION]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_subclasificacion] FOREIGN KEY ([FK_SUBCLASIFICACION]) REFERENCES [dbo].[t_cat_subclasificacion] ([PK_SUBCLASIFICACION]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_tipo_servicio] FOREIGN KEY ([FK_TIPO_SERVICIO]) REFERENCES [dbo].[t_cat_tipo_servicio] ([PK_TIPO_SERVICIO]),
    CONSTRAINT [FK_t_ges_proyecto_t_cat_tipo_uso] FOREIGN KEY ([FK_TIPO_USO]) REFERENCES [dbo].[t_cat_tipo_uso] ([PK_TIPO_USO]),
    CONSTRAINT [FK_t_ges_proyecto_t_ges_gestion] FOREIGN KEY ([PK_PROYECTO]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

