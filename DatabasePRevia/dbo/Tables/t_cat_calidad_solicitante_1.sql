CREATE TABLE [dbo].[t_cat_calidad_solicitante] (
    [PK_CALIDAD_SOLICITANTE] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]                 NVARCHAR (100) NULL,
    [STATUS]                 BIT            NULL,
    CONSTRAINT [PK_T_CAT_CALIDAD_SOLICITANTE] PRIMARY KEY CLUSTERED ([PK_CALIDAD_SOLICITANTE] ASC)
);

