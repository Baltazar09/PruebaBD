CREATE TABLE [catalogos].[t_cat_tipo_solicitante] (
    [PK_TIPO_SOLICITANTE] INT            NOT NULL,
    [TIPO]                NVARCHAR (250) NOT NULL,
    [STATUS]              BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_cat_tipo_solicitante] PRIMARY KEY CLUSTERED ([PK_TIPO_SOLICITANTE] ASC)
);

