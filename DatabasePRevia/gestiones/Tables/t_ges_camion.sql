CREATE TABLE [gestiones].[t_ges_camion] (
    [PK_CAMION]       INT          NOT NULL,
    [STATUS]          BIT          CONSTRAINT [DF_t_ges_camion_STATUS] DEFAULT ((1)) NOT NULL,
    [PLACA]           NVARCHAR (6) NOT NULL,
    [M3_SOLICITADOS]  INT          NOT NULL,
    [CANTIDAD_TANQUE] INT          NOT NULL,
    [FK_CONDUCTOR]    INT          NOT NULL,
    [FK_FORMULARIO6]  INT          NOT NULL,
    CONSTRAINT [PK_t_ges_camion] PRIMARY KEY CLUSTERED ([PK_CAMION] ASC),
    CONSTRAINT [FK_t_ges_camion_t_ges_conductor_representante] FOREIGN KEY ([FK_CONDUCTOR]) REFERENCES [gestiones].[t_ges_conductor_representante] ([PK_CONDUCTOR_REPRESENTANTE]),
    CONSTRAINT [FK_t_ges_camion_t_ges_fomulario6] FOREIGN KEY ([FK_FORMULARIO6]) REFERENCES [gestiones].[t_ges_fomulario6] ([PK_FORMULARIO6])
);

