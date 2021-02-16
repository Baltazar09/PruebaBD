﻿CREATE TABLE [catalogos].[t_cat_provincia] (
    [PK_PROVINCIA] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]       NVARCHAR (100) NOT NULL,
    [STATUS]       BIT            NOT NULL,
    CONSTRAINT [PK_T_CAT_PROVINCIA] PRIMARY KEY CLUSTERED ([PK_PROVINCIA] ASC)
);

