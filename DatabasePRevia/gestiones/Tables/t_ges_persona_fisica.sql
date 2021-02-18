CREATE TABLE [gestiones].[t_ges_persona_fisica] (
    [PK_PERSONA_FISICA]      INT           NOT NULL,
    [STATUS]                 BIT           CONSTRAINT [DF_t_ges_persona_fisica_STATUS] DEFAULT ((1)) NOT NULL,
    [NOMBRE]                 NVARCHAR (15) NOT NULL,
    [P_APELLIDO]             NVARCHAR (15) NOT NULL,
    [S_APELLIDO]             NVARCHAR (15) NULL,
    [FK_TIPO_IDENTIFICACION] INT           NOT NULL,
    [IDENTIFICACION]         NVARCHAR (15) NOT NULL,
    [P_TELEFONO]             NVARCHAR (9)  NOT NULL,
    [S_TELEFONO]             NVARCHAR (9)  NULL,
    [FK_SOLICITANTE]         INT           NOT NULL,
    CONSTRAINT [PK_t_ges_persona_fisica] PRIMARY KEY CLUSTERED ([PK_PERSONA_FISICA] ASC),
    CONSTRAINT [FK_t_ges_persona_fisica_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_persona_fisica_t_ges_solicitante_B] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [gestiones].[t_ges_solicitante] ([PK_SOLICITANTE])
);

