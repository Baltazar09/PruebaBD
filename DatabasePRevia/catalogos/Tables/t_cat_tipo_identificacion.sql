﻿CREATE TABLE [catalogos].[t_cat_tipo_identificacion] (
    [PK_TIPO_IDENTIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]            NVARCHAR (100) NULL,
    [STATUS]                 CHAR (1)       DEFAULT ('A') NULL,
    CONSTRAINT [PK_T_CAT_TIPO_IDENTIFICACION] PRIMARY KEY CLUSTERED ([PK_TIPO_IDENTIFICACION] ASC),
    CONSTRAINT [CHK_STATUS_T_CAT_TIPO_IDENTIFICACION] CHECK ([STATUS]='B' OR [STATUS]='I' OR [STATUS]='A')
);
