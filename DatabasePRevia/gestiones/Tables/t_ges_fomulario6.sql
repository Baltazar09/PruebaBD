CREATE TABLE [gestiones].[t_ges_fomulario6] (
    [PK_FORMULARIO6]     INT            NOT NULL,
    [STATUS]             BIT            CONSTRAINT [DF_t_ges_fomulario6_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_SOLICITUD]       INT            NOT NULL,
    [FK_SOLICITANTE]     INT            NOT NULL,
    [FK_TIPO_TRANSPORTE] INT            NOT NULL,
    [DESTINO]            NVARCHAR (500) NOT NULL,
    [USO]                NVARCHAR (500) NOT NULL,
    CONSTRAINT [PK_t_ges_fomulario6] PRIMARY KEY CLUSTERED ([PK_FORMULARIO6] ASC),
    CONSTRAINT [FK_t_ges_fomulario6_t_cat_tipo_transporte] FOREIGN KEY ([FK_TIPO_TRANSPORTE]) REFERENCES [catalogos].[t_cat_tipo_transporte] ([PK_TIPO_TRANSPORTE]),
    CONSTRAINT [FK_t_ges_fomulario6_t_ges_solicitante_B] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [gestiones].[t_ges_solicitante] ([PK_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_fomulario6_t_ges_solicitud] FOREIGN KEY ([FK_SOLICITUD]) REFERENCES [gestiones].[t_ges_solicitud] ([PK_SOLICITUD])
);

