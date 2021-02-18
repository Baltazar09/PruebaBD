CREATE TABLE [catalogos].[t_cat_tipo_transporte] (
    [PK_TIPO_TRANSPORTE] INT           NOT NULL,
    [STATUS]             BIT           CONSTRAINT [DF_t_cat_tipo_transporte_STATUS] DEFAULT ((1)) NOT NULL,
    [TIPO]               NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_t_cat_tipo_transporte] PRIMARY KEY CLUSTERED ([PK_TIPO_TRANSPORTE] ASC)
);

