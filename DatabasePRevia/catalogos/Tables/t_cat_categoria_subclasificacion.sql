CREATE TABLE [catalogos].[t_cat_categoria_subclasificacion] (
    [PK_CATEGORIA_SUBCLASIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [FK_SUBCLASIFICACION]           INT            NOT NULL,
    [DESCRIPCION]                   NVARCHAR (100) NULL,
    [APLICA_AREA]                   BIT            DEFAULT ((0)) NOT NULL,
    [APLICA_NIVELES]                BIT            DEFAULT ((0)) NOT NULL,
    [APLICA_CANTIDAD]               BIT            DEFAULT ((0)) NOT NULL,
    [APLICA_CAUDAL]                 BIT            DEFAULT ((0)) NOT NULL,
    [APLICA_TIPOPROYECTO]           BIT            DEFAULT ((0)) NOT NULL,
    [APLICA_TIPO_SERVICIO]          BIT            DEFAULT ((0)) NOT NULL,
    [APLLICA_TIPO_USO]              BIT            DEFAULT ((0)) NOT NULL,
    [STATUS]                        BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_cat_categoria_subclasificacion] PRIMARY KEY CLUSTERED ([PK_CATEGORIA_SUBCLASIFICACION] ASC),
    CONSTRAINT [FK_t_cat_categoria_subclasificacion_t_cat_subclasificacion] FOREIGN KEY ([FK_SUBCLASIFICACION]) REFERENCES [catalogos].[t_cat_subclasificacion] ([PK_SUBCLASIFICACION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada subclasificación', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'FK_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'PK_CATEGORIA_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripcion o nombre de la categoria', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo tipo uso', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLLICA_TIPO_USO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo tipo proyecto', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_TIPOPROYECTO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo tipo servicio', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_TIPO_SERVICIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo niveles', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_NIVELES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo caudal', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_CAUDAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo cantidad', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_CANTIDAD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si aplica llenar campo area', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'APLICA_AREA';

