CREATE TABLE [catalogos].[t_cat_canton] (
    [PK_CANTON]    INT            IDENTITY (1, 1) NOT NULL,
    [FK_PROVINCIA] INT            NOT NULL,
    [NOMBRE]       NVARCHAR (100) NULL,
    [STATUS]       CHAR (1)       NULL,
    CONSTRAINT [PK_t_cat_canton_1] PRIMARY KEY CLUSTERED ([PK_CANTON] ASC),
    CONSTRAINT [PK_T_CAT_CANTON_T_CAT_PROVINCIA] FOREIGN KEY ([FK_PROVINCIA]) REFERENCES [catalogos].[t_cat_provincia] ([PK_PROVINCIA])
);

