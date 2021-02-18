CREATE TABLE [gestiones].[t_ges_medio_notificacion] (
    [PK_MEDIO_NOTIFICACION] INT            IDENTITY (1, 1) NOT NULL,
    [FK_GESTION]            INT            NOT NULL,
    [EMAIL]                 NVARCHAR (100) NULL,
    [TELEFONO]              NVARCHAR (9)  NULL,
    [DIRECCION]             NVARCHAR (500) NULL,
    [PRINCIPAL]             BIT            NULL,
    [STATUS]                BIT            NOT NULL,
    CONSTRAINT [PK_T_GES_MEDIO_NOTIFICACION] PRIMARY KEY CLUSTERED ([PK_MEDIO_NOTIFICACION] ASC),
    CONSTRAINT [FK_T_GES_MEDIO_NOTIFICACION_GESTION] FOREIGN KEY ([FK_GESTION]) REFERENCES [gestiones].[t_ges_gestion] ([PK_GESTION])
);



