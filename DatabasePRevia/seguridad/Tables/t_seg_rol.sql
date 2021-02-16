﻿CREATE TABLE [seguridad].[t_seg_rol] (
    [PK_ROL] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE] NVARCHAR (100) NOT NULL,
    [STATUS] BIT            NOT NULL,
    CONSTRAINT [PK_ROL] PRIMARY KEY CLUSTERED ([PK_ROL] ASC)
);

