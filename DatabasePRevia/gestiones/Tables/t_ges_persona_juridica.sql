CREATE TABLE [gestiones].[t_ges_persona_juridica] (
    [PK_PERSONA_JURIDICA]    INT            NOT NULL,
    [STATUS]                 BIT            CONSTRAINT [DF_t_ges_persona_juridica_STATUS] DEFAULT ((1)) NOT NULL,
    [RAZON_SOCIAL]           NVARCHAR (50)  NOT NULL,
    [FK_TIPO_IDENTIFICACION] INT            NOT NULL,
    [IDENTIFICACION]         NVARCHAR (15)  NOT NULL,
    [P_TELEFONO]             NVARCHAR (9)   NOT NULL,
    [S_TELEFONO]             NVARCHAR (9)   NULL,
    [CORREO_ELECTRONICO]     NVARCHAR (250) NULL,
    [FK_SOLICITANTE]         INT            NOT NULL,
    CONSTRAINT [PK_t_ges_persona_juridica] PRIMARY KEY CLUSTERED ([PK_PERSONA_JURIDICA] ASC),
    CONSTRAINT [FK_t_ges_persona_juridica_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_t_ges_persona_juridica_t_ges_solicitante_B] FOREIGN KEY ([FK_SOLICITANTE]) REFERENCES [gestiones].[t_ges_solicitante] ([PK_SOLICITANTE])
);

