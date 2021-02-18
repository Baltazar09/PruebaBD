CREATE TABLE [gestiones].[t_ges_formulario7] (
    [PK_FORMULARIO7]     INT            NOT NULL,
    [STATUS]             BIT            CONSTRAINT [DF_t_ges_formulario7_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_SOLICITUD]       INT            NOT NULL,
    [FK_SOLICITANTE]     INT            NOT NULL,
    [NIS]                NVARCHAR (7)   NOT NULL,
    [CORREO_ELECTRONICO] NVARCHAR (50)  NOT NULL,
    [FK_DISTRITO]        INT            NOT NULL,
    [JUSTIFICACION]      NVARCHAR (100) NOT NULL,
    [FK_TIPO_PLANO]      INT            NOT NULL,
    [NUM_PLANO]          NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_t_ges_formulario7] PRIMARY KEY CLUSTERED ([PK_FORMULARIO7] ASC),
    CONSTRAINT [FK_t_ges_formulario7_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO]) REFERENCES [catalogos].[t_cat_distrito] ([PK_DISTRITO]),
    CONSTRAINT [FK_t_ges_formulario7_t_cat_tipo_plano] FOREIGN KEY ([FK_TIPO_PLANO]) REFERENCES [catalogos].[t_cat_tipo_plano] ([PK_TIPO_PLANO]),
    CONSTRAINT [FK_t_ges_formulario7_t_cat_tipo_solicitante] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [catalogos].[t_cat_tipo_solicitante] ([PK_TIPO_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_formulario7_t_ges_solicitante] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [gestiones].[t_ges_solicitante] ([PK_SOLICITANTE]),
    CONSTRAINT [FK_t_ges_formulario7_t_ges_solicitud] FOREIGN KEY ([FK_SOLICITUD]) REFERENCES [gestiones].[t_ges_solicitud] ([PK_SOLICITUD])
);

