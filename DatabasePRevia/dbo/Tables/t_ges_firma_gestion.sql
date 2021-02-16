﻿CREATE TABLE [dbo].[t_ges_firma_gestion] (
    [PK_FIRMA_GESTION]       INT             NOT NULL,
    [NOMBRE]                 NVARCHAR (20)   NULL,
    [PAPELLIDO]              NVARCHAR (20)   NULL,
    [SAPELLIDO]              NVARCHAR (20)   NULL,
    [FK_TIPO_IDENTIFICACION] INT             NULL,
    [IDENTIFICACION]         NVARCHAR (100)  NULL,
    [FIRMADIGITAL]           VARBINARY (MAX) NULL,
    CONSTRAINT [PK_T_GES_FIRMA_GESTION] PRIMARY KEY CLUSTERED ([PK_FIRMA_GESTION] ASC),
    CONSTRAINT [FK_T_GES_FIRMA_GESTION_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [dbo].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_GES_FIRMA_GESTION_T_GES_GESTION] FOREIGN KEY ([PK_FIRMA_GESTION]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

