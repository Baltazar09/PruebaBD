CREATE TABLE [dbo].[t_ges_localizacion_inmueble] (
    [PK_LOCALIZACION_INMUEBLE] INT            NOT NULL,
    [FK_PROVINCIA]             INT            NOT NULL,
    [FK_CANTON]                INT            NOT NULL,
    [FK_DISTRITO]              INT            NOT NULL,
    [DIRECCION]                NVARCHAR (500) NULL,
    [STATUS]                   BIT            NOT NULL,
    CONSTRAINT [PK_t_ges_localizacion_inmueble] PRIMARY KEY CLUSTERED ([PK_LOCALIZACION_INMUEBLE] ASC),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_cat_canton] FOREIGN KEY ([FK_CANTON], [FK_PROVINCIA]) REFERENCES [dbo].[t_cat_canton] ([PK_CANTON], [PK_PROVINCIA]),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO], [FK_CANTON], [FK_PROVINCIA]) REFERENCES [dbo].[t_cat_distrito] ([PK_DISTRITO], [PK_CANTON], [PK_PROVINCIA]),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_cat_provincia] FOREIGN KEY ([FK_PROVINCIA]) REFERENCES [dbo].[t_cat_provincia] ([PK_PROVINCIA]),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_ges_gestion] FOREIGN KEY ([PK_LOCALIZACION_INMUEBLE]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);



