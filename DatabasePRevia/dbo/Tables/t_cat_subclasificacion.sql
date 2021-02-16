CREATE TABLE [dbo].[t_cat_subclasificacion] (
    [PK_SUBCLASIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]         NVARCHAR (100) NULL,
    CONSTRAINT [PK_t_cat_subclasificacion] PRIMARY KEY CLUSTERED ([PK_SUBCLASIFICACION] ASC)
);

