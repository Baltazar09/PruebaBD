CREATE TABLE [dbo].[t_ges_venta_agua_volumen_movil] (
    [PK_VENTA_AGUA_VOLUMEN_MOVIL] INT         NOT NULL,
    [STATUS]                      BIT         NOT NULL,
    [M3_SOLICITADOS]              INT         NULL,
    [CAPACIDAD_TANQUE]            INT         NULL,
    [DESTINO]                     TEXT        NULL,
    [USO]                         TEXT        NULL,
    [FK_GESTION]                  INT         NOT NULL,
    [IMAGEN_CEDULA]               NCHAR (100) NULL,
    [COMPROBANTE_PAGO]            NCHAR (100) NULL,
    CONSTRAINT [PK_t_ges_venta_agua_volumen_movil] PRIMARY KEY CLUSTERED ([PK_VENTA_AGUA_VOLUMEN_MOVIL] ASC),
    CONSTRAINT [FK_t_ges_venta_agua_volumen_movil_t_ges_gestion] FOREIGN KEY ([FK_GESTION]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

