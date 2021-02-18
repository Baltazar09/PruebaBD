CREATE TABLE [gestiones].[t_ges_solicitud] (
    [PK_SOLICITUD]     INT            NOT NULL,
    [FK_FORMULARIO]    INT            NOT NULL,
    [NUMERO]           NVARCHAR (250) NOT NULL,
    [FEC_PRESENTACION] DATE           CONSTRAINT [DF_t_ges_solicitud_FEC_PRESENTACION] DEFAULT (getdate()) NOT NULL,
    [STATUS]           BIT            CONSTRAINT [DF_t_ges_solicitud_STATUS] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_ges_solicitud] PRIMARY KEY CLUSTERED ([PK_SOLICITUD] ASC),
    CONSTRAINT [FK_t_ges_solicitud_t_cat_formulario] FOREIGN KEY ([FK_FORMULARIO]) REFERENCES [catalogos].[t_cat_formulario] ([PK_FORMULARIO])
);

