CREATE TABLE [dbo].[t_cat_tipo_calidad] (
    [PK_TIPO_CALIDAD] INT         NOT NULL,
    [STATUS]          BIT         NULL,
    [NOMBRE]          NCHAR (100) NULL,
    CONSTRAINT [PK_t_cat_tipo_calidad] PRIMARY KEY CLUSTERED ([PK_TIPO_CALIDAD] ASC)
);

