CREATE TABLE [gestiones].[t_ges_medio_notificacion] (
    [PK_MEDIO_NOTIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [FK_GESTION]            INT            NOT NULL,
    [EMAIL]                 NVARCHAR (100) NULL,
    [TELEFONO]              NVARCHAR (9)   NULL,
    [DIRECCION]             NVARCHAR (500) NULL,
    [PRINCIPAL]             BIT            NULL,
    [STATUS]                BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_GES_MEDIO_NOTIFICACION] PRIMARY KEY CLUSTERED ([PK_MEDIO_NOTIFICACION] ASC),
    CONSTRAINT [FK_T_GES_MEDIO_NOTIFICACION_GESTION] FOREIGN KEY ([FK_GESTION]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Teléfono', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'TELEFONO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indica si el medio de notificación es el principal', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'PRINCIPAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'PK_MEDIO_NOTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'FK_GESTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Correo electrónico', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'EMAIL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Dirección', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_medio_notificacion', @level2type = N'COLUMN', @level2name = N'DIRECCION';

