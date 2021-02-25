CREATE TABLE [catalogos].[t_cat_admin_gestion] (
    [PK_ADMIN_GESTION]       INT            IDENTITY (1, 1) NOT NULL,
    [TITULO]                 NVARCHAR (100) NULL,
    [DESCRIPCION]            NVARCHAR (250) NULL,
    [INFORMACION_IMPORTANTE] NVARCHAR (MAX) NULL,
    [MASCARA_CONSECUTIVO]    NVARCHAR (50)  NULL,
    [STATUS]                 BIT            DEFAULT (1) NOT NULL,
    CONSTRAINT [PK_T_CAT_ADMIN_GESTION] PRIMARY KEY CLUSTERED ([PK_ADMIN_GESTION] ASC)
);






GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Titulo de la gestión', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'TITULO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'PK_ADMIN_GESTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mascara para la creación del consecutivo de la gestión', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'MASCARA_CONSECUTIVO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Información Importante de la gestión', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'INFORMACION_IMPORTANTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripcion de la gestión', @level0type = N'SCHEMA', @level0name = N'catalogos', @level1type = N'TABLE', @level1name = N't_cat_admin_gestion', @level2type = N'COLUMN', @level2name = N'DESCRIPCION';

