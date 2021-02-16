CREATE TABLE [dbo].[t_ges_nave] (
    [PK_NAVE]                 INT         NOT NULL,
    [FK_GESTION]              INT         NOT NULL,
    [FK_ENCARGADO_TRANSPORTE] INT         NOT NULL,
    [STATUS]                  BIT         NULL,
    [NOMBRE_NAVE]             NCHAR (100) NULL,
    [FECHA_ARRIBO]            DATE        NULL,
    [HORA_ARRIBO]             TIME (7)    NULL,
    CONSTRAINT [PK_t_ges_nave] PRIMARY KEY CLUSTERED ([PK_NAVE] ASC),
    CONSTRAINT [FK_t_ges_nave_t_ges_encargado_transporte] FOREIGN KEY ([FK_ENCARGADO_TRANSPORTE]) REFERENCES [dbo].[t_ges_encargado_transporte] ([PK_ENCARGADO_TRANSPORTE]),
    CONSTRAINT [FK_t_ges_nave_t_ges_gestion] FOREIGN KEY ([FK_GESTION]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

