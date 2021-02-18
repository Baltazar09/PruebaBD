CREATE TABLE [dbo].[t_ges_solicitante] (
    [PK_SOLICITANTE]   INT         NOT NULL,
    [NIS]              NCHAR (10)  NULL,
    [P_TELEFONO]       NCHAR (10)  NULL,
    [S_TELEFONO]       NCHAR (10)  NULL,
    [EMAIL]            NCHAR (100) NULL,
    [FK_DISTRITO]      INT         NULL,
    [OTRAS_SENIAS]     NCHAR (100) NULL,
    [FK_TIPO_PLANO]    INT         NULL,
    [NUMERO_PLANO]     NCHAR (10)  NULL,
    [FOLEO_MATRICULA]  NCHAR (10)  NULL,
    [IMAGEN_PLANO]     NCHAR (10)  NULL,
    [ANIOS_COBRADOS]   INT         NULL,
    [JUSTIFICACION]    TEXT        NULL,
    [FK_GESTION]       INT         NOT NULL,
    [DOCUMENTO_CEDULA] NCHAR (10)  NULL,
    [STATUS]           BIT         NOT NULL,
    CONSTRAINT [PK_t_ges_solicitante] PRIMARY KEY CLUSTERED ([PK_SOLICITANTE] ASC),
    CONSTRAINT [FK_t_ges_solicitante_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO]) REFERENCES [catalogos].[t_cat_distrito] ([PK_DISTRITO]),
    CONSTRAINT [FK_t_ges_solicitante_t_cat_tipo_plano] FOREIGN KEY ([FK_TIPO_PLANO]) REFERENCES [dbo].[t_cat_tipo_plano] ([PK_TIPO_PLANO]),
    CONSTRAINT [FK_t_ges_solicitante_t_ges_gestion] FOREIGN KEY ([FK_GESTION]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);



