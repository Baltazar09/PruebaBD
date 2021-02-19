CREATE TABLE [gestiones].[t_ges_localizacion_inmueble] (
    [PK_LOCALIZACION_INMUEBLE] INT            NOT NULL,
    [FK_DISTRITO]              INT            NOT NULL,
    [DIRECCION]                NVARCHAR (500) NULL,
    [STATUS]                   BIT            NOT NULL,
    CONSTRAINT [PK_t_ges_localizacion_inmueble] PRIMARY KEY CLUSTERED ([PK_LOCALIZACION_INMUEBLE] ASC),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO]) REFERENCES [catalogos].[t_cat_distrito] ([PK_DISTRITO]),
    CONSTRAINT [FK_t_ges_localizacion_inmueble_t_ges_gestion] FOREIGN KEY ([PK_LOCALIZACION_INMUEBLE]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_localizacion_inmueble', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_localizacion_inmueble', @level2type = N'COLUMN', @level2name = N'PK_LOCALIZACION_INMUEBLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del distrito', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_localizacion_inmueble', @level2type = N'COLUMN', @level2name = N'FK_DISTRITO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Direccion exacta', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_localizacion_inmueble', @level2type = N'COLUMN', @level2name = N'DIRECCION';

