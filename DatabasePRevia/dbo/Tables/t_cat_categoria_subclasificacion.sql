CREATE TABLE [dbo].[t_cat_categoria_subclasificacion] (
    [PK_CATEGORIA_SUBCLASIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [PK_SUBCLASIFICACION]           INT            NOT NULL,
    [DESCRIPCION]                   NVARCHAR (100) NULL,
    CONSTRAINT [PK_t_cat_categoria_subclasificacion] PRIMARY KEY CLUSTERED ([PK_CATEGORIA_SUBCLASIFICACION] ASC, [PK_SUBCLASIFICACION] ASC),
    CONSTRAINT [FK_t_cat_categoria_subclasificacion_t_cat_subclasificacion] FOREIGN KEY ([PK_SUBCLASIFICACION]) REFERENCES [dbo].[t_cat_subclasificacion] ([PK_SUBCLASIFICACION])
);

