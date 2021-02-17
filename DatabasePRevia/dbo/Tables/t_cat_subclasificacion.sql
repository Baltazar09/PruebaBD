CREATE TABLE [dbo].[t_cat_subclasificacion] (
    [PK_SUBCLASIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]         NVARCHAR (100) NULL,
    [STATUS]              BIT            CONSTRAINT [DF_t_cat_subclasificacion_STATUS] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_t_cat_subclasificacion] PRIMARY KEY CLUSTERED ([PK_SUBCLASIFICACION] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_subclasificacion', @level2type = N'COLUMN', @level2name = N'PK_SUBCLASIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción o nombre de la subclasificación', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_subclasificacion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N't_cat_subclasificacion', @level2type = N'COLUMN', @level2name = N'STATUS';

