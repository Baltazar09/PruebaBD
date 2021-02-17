CREATE TABLE [dbo].[t_ges_formalizacion_servicio] (
    [PK_FORMALIZACION_SERVICIO] INT            NOT NULL,
    [OBSERVACIONES]             NVARCHAR (500) NULL,
    [URL_CERTIFICACION_PODER]   NVARCHAR (250) NULL,
    [URL_CEDULA_FRENTE]         NVARCHAR (250) NULL,
    [URL_CEDULA_ATRAS]          NVARCHAR (250) NULL,
    [AUTORIZACION_ABOGADO]      BIT            NULL,
    [STATUS]                    BIT            NULL,
    CONSTRAINT [PK_t_ges_formalizacion_servicio] PRIMARY KEY CLUSTERED ([PK_FORMALIZACION_SERVICIO] ASC),
    CONSTRAINT [FK_t_ges_formalizacion_servicio_t_ges_gestion] FOREIGN KEY ([PK_FORMALIZACION_SERVICIO]) REFERENCES [dbo].[t_ges_gestion] ([PK_GESTION])
);

