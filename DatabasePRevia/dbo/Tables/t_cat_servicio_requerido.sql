CREATE TABLE [dbo].[t_cat_servicio_requerido] (
    [PK_SERVICIO_REQUERIDO] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]           NVARCHAR (100) NULL,
    CONSTRAINT [PK_t_cat_servicio_requerido] PRIMARY KEY CLUSTERED ([PK_SERVICIO_REQUERIDO] ASC)
);

