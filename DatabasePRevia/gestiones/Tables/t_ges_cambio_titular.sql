CREATE TABLE [gestiones].[t_ges_cambio_titular] (
    [PK_CAMBIO_TITULAR] INT         NOT NULL,
    [SUSCRITO]          NCHAR (100) NULL,
    [STATUS]            BIT         NULL,
    [FK_TIPO_CALIDAD]   INT         NULL,
    [FK_GESTION]        INT         NULL,
    CONSTRAINT [PK_t_ges_cambio_titular] PRIMARY KEY CLUSTERED ([PK_CAMBIO_TITULAR] ASC),
    CONSTRAINT [FK_t_ges_cambio_titular_t_cat_tipo_calidad] FOREIGN KEY ([FK_TIPO_CALIDAD]) REFERENCES [catalogos].[t_cat_tipo_calidad] ([PK_TIPO_CALIDAD]),
    CONSTRAINT [FK_t_ges_cambio_titular_t_ges_gestion] FOREIGN KEY ([FK_GESTION]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);

