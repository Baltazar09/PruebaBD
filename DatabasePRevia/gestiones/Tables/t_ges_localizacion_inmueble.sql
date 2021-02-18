CREATE TABLE [gestiones].[t_ges_localizacion_inmueble] (
    [PK_LOCALIZACION_INMUEBLE] INT            NOT NULL,
    [FK_DISTRITO]              INT            NOT NULL,
    [DIRECCION]                NVARCHAR (500) NULL,
    [STATUS]                   BIT            NOT NULL,
    CONSTRAINT [PK_t_ges_localizacion_inmueble] PRIMARY KEY CLUSTERED ([PK_LOCALIZACION_INMUEBLE] ASC),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO]) REFERENCES [catalogos].[t_cat_distrito] ([PK_DISTRITO]),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_ges_gestion] FOREIGN KEY ([PK_LOCALIZACION_INMUEBLE]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);





