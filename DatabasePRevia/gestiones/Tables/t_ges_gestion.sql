CREATE TABLE [gestiones].[t_ges_gestion] (
    [PK_GESTION]        INT            IDENTITY (1, 1) NOT NULL,
    [FK_ADMIN_GESTION]  INT            NOT NULL,
    [FK_USUARIO]        INT            NOT NULL,
    [NOSOLICITUD]       NVARCHAR (100) NULL,
    [FECHAPRESENTACION] DATE           NULL,
    [STATUS]            BIT            NOT NULL,
    CONSTRAINT [PK_T_GES_GESTION] PRIMARY KEY CLUSTERED ([PK_GESTION] ASC),
    CONSTRAINT [FK_T_GES_GESTION_T_CAT_ADMIN_GESTION] FOREIGN KEY ([FK_ADMIN_GESTION]) REFERENCES [catalogos].[t_cat_admin_gestion] ([PK_ADMIN_GESTION]),
    CONSTRAINT [FK_T_GES_GESTION_T_SEG_USUARIO] FOREIGN KEY ([FK_USUARIO]) REFERENCES [seguridad].[t_seg_usuario] ([PK_USUARIO])
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'PK_GESTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de solicitud segun formato', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'NOSOLICITUD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del usuario que registra', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'FK_USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'FK_ADMIN_GESTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha de registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_gestion', @level2type = N'COLUMN', @level2name = N'FECHAPRESENTACION';

