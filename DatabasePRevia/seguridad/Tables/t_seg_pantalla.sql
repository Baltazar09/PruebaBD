CREATE TABLE [seguridad].[t_seg_pantalla] (
    [PK_PANTALLA] INT            IDENTITY (1, 1) NOT NULL,
    [NOMBRE]      NVARCHAR (100) NOT NULL,
    [STATUS]      BIT            NOT NULL,
    [FK_MODULO]   INT            NOT NULL,
    CONSTRAINT [PK_t_seg_pantalla] PRIMARY KEY CLUSTERED ([PK_PANTALLA] ASC),
    CONSTRAINT [FK_t_seg_pantalla_t_seg_modulo] FOREIGN KEY ([FK_MODULO]) REFERENCES [seguridad].[t_seg_modulo] ([PK_MODULO])
);

