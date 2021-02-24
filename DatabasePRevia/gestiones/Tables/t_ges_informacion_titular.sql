CREATE TABLE [gestiones].[t_ges_informacion_titular] (
    [PK_INFORMACION_TITULAR]   INT            NOT NULL,
    [FK_TIPO_TITULAR_INMUEBLE] INT            NOT NULL,
    [TIPOPERSONA]              CHAR (1)       NOT NULL,
    [NOMBRE]                   NVARCHAR (10)  NULL,
    [P_APELLIDO]               NVARCHAR (50)  NULL,
    [S_APELLIDO]               NVARCHAR (50)  NULL,
    [RAZONSOCIAL]              NVARCHAR (100) NULL,
    [IDENTIFICACION]           NVARCHAR (50)  NULL,
    [STATUS]                   BIT            NOT NULL,
    CONSTRAINT [PK_T_GES_INFORMACION_TITULAR] PRIMARY KEY CLUSTERED ([PK_INFORMACION_TITULAR] ASC),
    CONSTRAINT [CHK_TIPOPERSONA_T_GES_INFORMACION_TITULAR] CHECK ([TIPOPERSONA]='J' OR [TIPOPERSONA]='F'),
    CONSTRAINT [FK_T_GES_INFORMACION_TITULAR_T_CAT_TIPO_TITULAR_INMUEBLE] FOREIGN KEY ([FK_TIPO_TITULAR_INMUEBLE]) REFERENCES [catalogos].[t_cat_tipo_titular_inmueble] ([PK_TIPO_TITULAR_INMUEBLE]),
    CONSTRAINT [FK_T_GES_INFORMACION_TITULAR_T_GES_GESTION] FOREIGN KEY ([PK_INFORMACION_TITULAR]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tipo Persona', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'TIPOPERSONA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'S_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Razón social', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'RAZONSOCIAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la gestión', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'PK_INFORMACION_TITULAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'P_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre completo', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificación', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del Tipo de titular del inmueble', @level0type = N'SCHEMA', @level0name = N'gestiones', @level1type = N'TABLE', @level1name = N't_ges_informacion_titular', @level2type = N'COLUMN', @level2name = N'FK_TIPO_TITULAR_INMUEBLE';

