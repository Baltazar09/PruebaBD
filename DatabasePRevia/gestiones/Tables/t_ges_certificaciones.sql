CREATE TABLE [gestiones].[t_ges_certificaciones] (
    [PK_CERTIFICACIONES]    INT NOT NULL,
    [STATUS]                BIT CONSTRAINT [DF_t_ges_certificaciones_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_FORMULARIO8]        INT NOT NULL,
    [FK_TIPO_CERTIFICACION] INT NOT NULL,
    CONSTRAINT [PK_t_ges_certificaciones] PRIMARY KEY CLUSTERED ([PK_CERTIFICACIONES] ASC),
    CONSTRAINT [FK_t_ges_certificaciones_t_cat_tipo_certificacion] FOREIGN KEY ([FK_TIPO_CERTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_certificacion] ([PK_TIPO_CERTIFICACION]),
    CONSTRAINT [FK_t_ges_certificaciones_t_ges_formulario8] FOREIGN KEY ([FK_FORMULARIO8]) REFERENCES [gestiones].[t_ges_formulario8] ([PK_FORMULARIO8])
);

