CREATE TABLE [gestiones].[t_ges_disponibilidad_agua] (
    [PK_DISPONIBILIDAD_AGUA]  INT           NOT NULL,
    [FK_TIPO_PROYECTO]        INT           NOT NULL,
    [NOLOTES]                 INT           NULL,
    [TIENENIS]                BIT           NULL,
    [NIS]                     NVARCHAR (7)  NULL,
    [UNDCONSUMO]              INT           NULL,
    [STATUS]                  BIT           NOT NULL,
    CONSTRAINT [PK_t_ges_disponibilidad_agua] PRIMARY KEY CLUSTERED ([PK_DISPONIBILIDAD_AGUA] ASC),
    CONSTRAINT [FK_t_ges_disponibilidad_agua_t_cat_tipo_Proyecto] FOREIGN KEY ([FK_TIPO_PROYECTO]) REFERENCES [catalogos].[t_cat_tipo_Proyecto] ([PK_TIPO_PROYECTO]),
    CONSTRAINT [FK_t_ges_disponibilidad_agua_t_ges_gestion] FOREIGN KEY ([PK_DISPONIBILIDAD_AGUA]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unidades de consumo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'UNDCONSUMO';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicador si posee NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'TIENENIS';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'STATUS';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de lotes', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'NOLOTES';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Codigo NIS', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'NIS';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del Tipo de Proyecto', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'FK_TIPO_PROYECTO';
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_disponibilidad_agua', @level2type = N'COLUMN', @level2name = N'PK_DISPONIBILIDAD_AGUA';
GO