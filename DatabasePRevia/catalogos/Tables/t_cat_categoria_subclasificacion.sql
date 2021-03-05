CREATE TABLE [catalogos].[t_cat_categoria_subclasificacion] (
    [PK_CATEGORIA_SUBCLASIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [PK_SUBCLASIFICACION]           INT            NOT NULL,
    [DESCRIPCION]                   NVARCHAR (100) NULL,
    [STATUS]                        BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_t_cat_categoria_subclasificacion] PRIMARY KEY CLUSTERED ([PK_CATEGORIA_SUBCLASIFICACION] ASC, [PK_SUBCLASIFICACION] ASC),
    CONSTRAINT [FK_t_cat_categoria_subclasificacion_t_cat_subclasificacion] FOREIGN KEY ([PK_SUBCLASIFICACION]) REFERENCES [catalogos].[t_cat_subclasificacion] ([PK_SUBCLASIFICACION])
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla relacionada subclasificación', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'PK_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'PK_CATEGORIA_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripcion o nombre de la categoria', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_categoria_subclasificacion', @level2type = N'COLUMN', @level2name = N'STATUS';

