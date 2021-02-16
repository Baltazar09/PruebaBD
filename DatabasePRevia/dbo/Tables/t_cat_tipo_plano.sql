CREATE TABLE [dbo].[t_cat_tipo_plano] (
    [PK_TIPO_PLANO] INT        NOT NULL,
    [STATUS]        BIT        NOT NULL,
    [NOMBRE]        NCHAR (10) NOT NULL,
    CONSTRAINT [PK_t_cat_tipo_plano] PRIMARY KEY CLUSTERED ([PK_TIPO_PLANO] ASC)
);

