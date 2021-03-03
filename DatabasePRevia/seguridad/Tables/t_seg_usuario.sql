CREATE TABLE [seguridad].[t_seg_usuario] (
    [PK_USUARIO]             INT             IDENTITY (1, 1) NOT NULL,
    [FK_TIPO_IDENTIFICACION] INT             NOT NULL,
    [EMAIL]                  NVARCHAR (100)  NOT NULL,
    [USUARIO]                NVARCHAR (100)  NOT NULL,
    [NOMBRE]                 NVARCHAR (25)   NOT NULL,
    [P_APELLIDO]             NVARCHAR (20)   NOT NULL,
    [S_APELLIDO]             NVARCHAR (20)   NULL,
    [EMAIL_CONFIRMADO]       BIT             DEFAULT ((0)) NOT NULL,
    [PASSWORD]               NVARCHAR (MAX)  NOT NULL,
    [TELEFONO_PRINCIPAL]     NVARCHAR (9)    NOT NULL,
    [TELEFONO_SECUNDARIO]    NVARCHAR (9)    NULL,
    [TELEFONO_CONFIRMADO]    BIT             DEFAULT ((0)) NOT NULL,
    [NIS]                    NVARCHAR (7)    NULL,
    [IDENTIFICACION]         NVARCHAR (50)   NOT NULL,
    [TWOFACTORENABLED]       BIT             DEFAULT ((0)) NOT NULL,
    [FECHA_CREACION]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [FECHA_ACTUALIZACION]    DATETIME        NULL,
    [INTENTOS_FALLIDOS]      INT             NOT NULL,
    [INTENTOS_PERMITIDOS]    INT             DEFAULT ((3)) NOT NULL,
    [FECHA_ULTIMOINGRESO]    DATETIME        NULL,
    [ESTADO_USUARIO]         CHAR (1)        DEFAULT ('A') NOT NULL,
    [IMAGEN_USUARIO]         VARBINARY (MAX) NULL,
    [FK_ROL]                 INT             NULL,
    [STATUS]                 BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED ([PK_USUARIO] ASC),
    CONSTRAINT [FK_T_SEG_USUARIO_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION]),
    CONSTRAINT [FK_T_SEG_USUARIO_T_SEG_ROL] FOREIGN KEY ([FK_ROL]) REFERENCES [seguridad].[t_seg_rol] ([PK_ROL])
);








GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nombre de usuario', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Doble factor', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'TWOFACTORENABLED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Teléfono secundario', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'TELEFONO_SECUNDARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Teléfono principal', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'TELEFONO_PRINCIPAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Confirmación Teléfono principal', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'TELEFONO_CONFIRMADO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado para borrado físico/lógico del registro', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Segundo apellido', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'S_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador de la tabla', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'PK_USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contraseña ', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'PASSWORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primer apellido', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'P_APELLIDO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre Completo', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'NOMBRE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cantidad de Intentos fallidos', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'INTENTOS_FALLIDOS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Imagen del Usuario', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'IMAGEN_USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Rol', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'FK_ROL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha ultimo ingreso exitoso', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'FECHA_ULTIMOINGRESO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha de creación ', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'FECHA_CREACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha actualización', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'FECHA_ACTUALIZACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estado del usuario', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'ESTADO_USUARIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Confirmación del email', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'EMAIL_CONFIRMADO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'correo electrónico', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'EMAIL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número NIS', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'NIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de Identificación', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador del tipo de identificación', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'FK_TIPO_IDENTIFICACION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cantidad de intentos permitidos para loguearse', @level0type = N'SCHEMA', @level0name = N'seguridad', @level1type = N'TABLE', @level1name = N't_seg_usuario', @level2type = N'COLUMN', @level2name = N'INTENTOS_PERMITIDOS';

