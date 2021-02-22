CREATE TABLE [gestiones].[t_ges_reclamo_importe_pretencion] (
    [FK_RECLAMO_IMPORTE] INT NOT NULL,
    [FK_PRETENSION]      INT NOT NULL,
    CONSTRAINT [FK_T_GES_RECLAMO_IMPORTE_PRETENCION_T_CAT_PRETENSION] FOREIGN KEY ([FK_RECLAMO_IMPORTE]) REFERENCES [gestiones].[t_ges_reclamo_importe] ([PK_RECLAMO_IMPORTE]),
    CONSTRAINT [FK_T_GES_RECLAMO_IMPORTE_PRETENCION_T_GES_RECLAMO_IMPORTE] FOREIGN KEY ([FK_PRETENSION]) REFERENCES [catalogos].[t_cat_pretension] ([PK_PRETENSION])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de pretensión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe_pretencion', @level2type = N'COLUMN', @level2name = N'FK_PRETENSION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del reclamo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_reclamo_importe_pretencion', @level2type = N'COLUMN', @level2name = N'FK_RECLAMO_IMPORTE';

