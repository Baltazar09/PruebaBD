CREATE TABLE [dbo].[t_ges_camion_sisterna] (
    [PK_CAMION_SISTERN]       INT         NOT NULL,
    [FK_GESTION]              INT         NOT NULL,
    [STATUS]                  BIT         NOT NULL,
    [NUM_PLACA]               NCHAR (100) NOT NULL,
    [FK_ENCARGADO_TRANSPORTE] INT         NOT NULL,
    CONSTRAINT [PK_t_ges_camion_sisterna] PRIMARY KEY CLUSTERED ([PK_CAMION_SISTERN] ASC),
    CONSTRAINT [FK_t_ges_camion_sisterna_t_ges_encargado_transporte] FOREIGN KEY ([FK_ENCARGADO_TRANSPORTE]) REFERENCES [dbo].[t_ges_encargado_transporte] ([PK_ENCARGADO_TRANSPORTE]),
    CONSTRAINT [FK_t_ges_camion_sisterna_t_ges_gestion1] FOREIGN KEY ([FK_GESTION]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

