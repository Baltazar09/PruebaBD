CREATE TABLE [dbo].[t_cat_objetivo_constancia] (
    [PK_OBJETIVO_CONSTANCIA] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]            NVARCHAR (250) NULL,
    [STATUS] BIT NULL, 
    CONSTRAINT [PK_t_cat_objetivo_constancia] PRIMARY KEY CLUSTERED ([PK_OBJETIVO_CONSTANCIA] ASC)
);

