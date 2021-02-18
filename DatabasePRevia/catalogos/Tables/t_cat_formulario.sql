CREATE TABLE [catalogos].[t_cat_formulario] (
    [PK_FORMULARIO]  INT            NOT NULL,
    [TITULO]         NVARCHAR (250) NOT NULL,
    [DEFINICION]     NVARCHAR (250) NULL,
    [REQUISITOS]     NVARCHAR (250) NULL,
    [MASCARA_NUMERO] NVARCHAR (250) NULL,
    [STATUS]         BIT            CONSTRAINT [DF_t_cat_formulario_STATUS] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_t_cat_formulario] PRIMARY KEY CLUSTERED ([PK_FORMULARIO] ASC)
);

