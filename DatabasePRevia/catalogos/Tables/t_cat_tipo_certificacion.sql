CREATE TABLE [catalogos].[t_cat_tipo_certificacion] (
    [PK_TIPO_CERTIFICACION] INT           NOT NULL,
    [STATUS]                BIT           CONSTRAINT [DF_t_cat_tipo_certificacion_STATUS] DEFAULT ((1)) NOT NULL,
    [TIPO]                  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_t_cat_tipo_certificacion] PRIMARY KEY CLUSTERED ([PK_TIPO_CERTIFICACION] ASC)
);

