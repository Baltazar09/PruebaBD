CREATE TABLE [catalogos].[t_cat_distrito] (
    [PK_DISTRITO] INT            IDENTITY (1, 1) NOT NULL,
    [FK_CANTON]   INT            NOT NULL,
    [NOMBRE]      NVARCHAR (100) NULL,
    [STATUS]      CHAR (1)       NULL,
    CONSTRAINT [PK_t_cat_distrito] PRIMARY KEY CLUSTERED ([PK_DISTRITO] ASC),
    CONSTRAINT [FK_t_cat_distrito_t_cat_canton] FOREIGN KEY ([FK_CANTON]) REFERENCES [catalogos].[t_cat_canton] ([PK_CANTON])
);

