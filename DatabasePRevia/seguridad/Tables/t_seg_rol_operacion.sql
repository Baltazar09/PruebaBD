CREATE TABLE [seguridad].[t_seg_rol_operacion] (
    [FK_OPERACION] INT NOT NULL,
    [FK_ROL]       INT NOT NULL,
    [FK_PANTALLA]  INT NOT NULL,
    CONSTRAINT [PK_t_seg_rol_operacion] PRIMARY KEY CLUSTERED ([FK_OPERACION] ASC, [FK_ROL] ASC, [FK_PANTALLA] ASC),
    CONSTRAINT [FK_OPERACION] FOREIGN KEY ([FK_OPERACION]) REFERENCES [seguridad].[t_seg_operacion] ([PK_OPERACION]),
    CONSTRAINT [FK_ROL] FOREIGN KEY ([FK_ROL]) REFERENCES [seguridad].[t_seg_rol] ([PK_ROL]),
    CONSTRAINT [FK_t_seg_rol_operacion_t_seg_pantalla] FOREIGN KEY ([FK_PANTALLA]) REFERENCES [seguridad].[t_seg_pantalla] ([PK_PANTALLA])
);

