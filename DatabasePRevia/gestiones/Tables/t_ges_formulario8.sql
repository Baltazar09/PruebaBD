CREATE TABLE [gestiones].[t_ges_formulario8] (
    [PK_FORMULARIO8]     INT           NOT NULL,
    [STATUS]             BIT           CONSTRAINT [DF_t_ges_formulario8_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_SOLICITUD]       INT           NOT NULL,
    [FK_SOLICITANTE]     INT           NOT NULL,
    [CORREO_ELECTRONICO] NVARCHAR (50) NULL,
    [NIS]                NVARCHAR (50) NULL,
    [PROPIETARIO]        NVARCHAR (50) NULL,
    CONSTRAINT [PK_t_ges_formulario8] PRIMARY KEY CLUSTERED ([PK_FORMULARIO8] ASC),
    CONSTRAINT [FK_t_ges_formulario8_t_ges_solicitante] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [gestiones].[t_ges_solicitante] ([PK_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_formulario8_t_ges_solicitud] FOREIGN KEY ([FK_SOLICITUD]) REFERENCES [gestiones].[t_ges_solicitud] ([PK_SOLICITUD])
);

