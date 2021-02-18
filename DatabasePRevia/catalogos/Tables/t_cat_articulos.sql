CREATE TABLE [catalogos].[t_cat_articulos] (
    [PK_ARTICULOS]  INT           NOT NULL,
    [STATUS]        BIT           CONSTRAINT [DF_t_cat_articulos_STATUS] DEFAULT ((1)) NOT NULL,
    [FK_FORMULARIO] INT           NOT NULL,
    [ARTICULO]      NVARCHAR (50) NOT NULL,
    [DESCRIPCION]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_t_cat_articulos] PRIMARY KEY CLUSTERED ([PK_ARTICULOS] ASC),
    CONSTRAINT [FK_t_cat_articulos_t_cat_formulario] FOREIGN KEY ([FK_FORMULARIO]) REFERENCES [catalogos].[t_cat_formulario] ([PK_FORMULARIO])
);

