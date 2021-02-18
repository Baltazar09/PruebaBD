CREATE TABLE [gestiones].[t_ges_embarcacion_avion] (
    [PK_EMBARCACION_AVION] INT           NOT NULL,
    [STATUS]               BIT           NOT NULL,
    [NOMBRE]               NVARCHAR (25) NOT NULL,
    [FECHA_ARRIBO]         DATE          NOT NULL,
    [HORA_ARRIBO]          TIME (7)      NOT NULL,
    [M3_SOLICITADOS]       INT           NOT NULL,
    [CANTIDAD_TANQUE]      INT           NOT NULL,
    [FK_REPRESENTANTE]     INT           NOT NULL,
    [FK_FORMULARIO6]       INT           NOT NULL,
    CONSTRAINT [PK_t_ges_embarcacion_avion] PRIMARY KEY CLUSTERED ([PK_EMBARCACION_AVION] ASC),
    CONSTRAINT [FK_t_ges_embarcacion_avion_t_ges_conductor_representante] FOREIGN KEY ([FK_REPRESENTANTE]) REFERENCES [gestiones].[t_ges_conductor_representante] ([PK_CONDUCTOR_REPRESENTANTE]),
    CONSTRAINT [FK_t_ges_embarcacion_avion_t_ges_fomulario6] FOREIGN KEY ([FK_FORMULARIO6]) REFERENCES [gestiones].[t_ges_fomulario6] ([PK_FORMULARIO6])
);

