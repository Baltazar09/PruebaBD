CREATE TABLE [gestiones].[t_ges_solicitante] (
    [PK_SOLICITANTE]      INT NOT NULL,
    [STATUS]              BIT CONSTRAINT [DF_t_ges_solicitante_B_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_TIPO_SOLICITANTE] INT NOT NULL,
    CONSTRAINT [PK_t_ges_solicitante_B] PRIMARY KEY CLUSTERED ([PK_SOLICITANTE] ASC),
    CONSTRAINT [FK_t_ges_solicitante_B_t_cat_tipo_solicitante] FOREIGN KEY ([FK_TIPO_SOLICITANTE]) REFERENCES [catalogos].[t_cat_tipo_solicitante] ([PK_TIPO_SOLICITANTE])
);
