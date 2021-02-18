CREATE TABLE [gestiones].[t_ges_disponibilidad_agua] (
    [PK_DISPONIBILIDAD_AGUA]  INT           NOT NULL,
    [FK_TIPO_PROYECTO]        INT           NOT NULL,
    [NOLOTES]                 INT           NULL,
    [TIENENIS]                BIT           NULL,
    [NIS]                     NVARCHAR(7),
    [UNDCONSUMO]              INT           NULL,
    [FK_NATURALEZA_INMUEBLE]  INT           NULL,
    [FOLIO_REAL]              NVARCHAR (18) NULL,
    [NUM_DOC]                 NVARCHAR (20) NULL,
    [NUM_CONTRATO]            NVARCHAR (20) NULL,
    [DECLARACION_JURADA_PRIV] BIT           NULL,
    [DECLARACION_JURADA_PROT] BIT           NULL,
    [PLANOCATASTRO]           NVARCHAR (20) NULL,
    [PLANOAGRIMENSURA]        NVARCHAR (20) NULL,
    [STATUS]                  BIT           NOT NULL,
    CONSTRAINT [PK_t_ges_disponibilidad_agua] PRIMARY KEY CLUSTERED ([PK_DISPONIBILIDAD_AGUA] ASC),
    CONSTRAINT [FK_t_ges_disponibilidad_agua_t_cat_naturaleza_inmueble] FOREIGN KEY ([FK_NATURALEZA_INMUEBLE]) REFERENCES [catalogos].[t_cat_naturaleza_inmueble] ([PK_NATURALEZA_INMUEBLE]),
    CONSTRAINT [FK_t_ges_disponibilidad_agua_t_cat_tipo_Proyecto] FOREIGN KEY ([FK_TIPO_PROYECTO]) REFERENCES [catalogos].[t_cat_tipo_Proyecto] ([PK_TIPO_PROYECTO]),
    CONSTRAINT [FK_t_ges_disponibilidad_agua_t_ges_gestion] FOREIGN KEY ([PK_DISPONIBILIDAD_AGUA]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);



