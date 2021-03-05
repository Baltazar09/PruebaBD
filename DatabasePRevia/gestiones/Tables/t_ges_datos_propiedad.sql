CREATE TABLE [gestiones].[t_ges_datos_propiedad] (
    [PK_DATOS_PROPIEDAD]      INT           NOT NULL,
    [FK_NATURALEZA_INMUEBLE]  INT           NOT NULL,
    [FOLIO_REAL]              NVARCHAR (16) NULL,
    [NUM_DOC]                 NVARCHAR (20) NULL,
    [NUM_CONTRATO]            NVARCHAR (20) NULL,
    [DECLARACION_JURADA_PRIV] BIT           NULL,
    [DECLARACION_JURADA_PROT] BIT           NULL,
    [PLANOCATASTRO]           NVARCHAR (15) NULL,
    [PLANOAGRIMENSURA]        NVARCHAR (11) NULL,
    [STATUS]                  BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_GES_DATOS_PROPIEDAD] PRIMARY KEY CLUSTERED ([PK_DATOS_PROPIEDAD] ASC),
    CONSTRAINT [FK_T_GES_DATOS_PROPIEDAD] FOREIGN KEY ([PK_DATOS_PROPIEDAD]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION]),
    CONSTRAINT [FK_T_GES_PROPIEDAD_T_CAT_NATURALEZA_INMUEBLE] FOREIGN KEY ([FK_NATURALEZA_INMUEBLE]) REFERENCES [catalogos].[t_cat_naturaleza_inmueble] ([PK_NATURALEZA_INMUEBLE])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Plano de agrimensura', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'PLANOAGRIMENSURA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de plano de catastro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'PLANOCATASTRO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Declaración Jurada Privada', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'DECLARACION_JURADA_PROT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Declaración Jurada Protocolizada', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'DECLARACION_JURADA_PRIV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de contrato/concesión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'NUM_CONTRATO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de documento', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'NUM_DOC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Folio real o matrícula', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'FOLIO_REAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la naturaleza del inmueble', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'FK_NATURALEZA_INMUEBLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_datos_propiedad', @level2type = N'COLUMN', @level2name = N'PK_DATOS_PROPIEDAD';

