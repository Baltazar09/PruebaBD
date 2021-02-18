CREATE TABLE [catalogos].[t_cat_titulo_propiedad] (
    [PK_TITULO_PROPIEDAD] INT            IDENTITY (1, 1) NOT NULL,
    [DESCRIPCION]         NVARCHAR (250) NULL,
    [STATUS] BIT NULL, 
    CONSTRAINT [PK_t_cat_titulo_propiedad] PRIMARY KEY CLUSTERED ([PK_TITULO_PROPIEDAD] ASC)
);

