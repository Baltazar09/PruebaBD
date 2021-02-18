CREATE TABLE [gestiones].[t_ges_firma] (
    [PK_FIRMA]     INT            NOT NULL,
    [STATUS]       BIT            CONSTRAINT [DF_t_ges_firma_STATUS] DEFAULT ((1)) NOT NULL,
    [FIRMA]        NVARCHAR (50)  NOT NULL,
    [RUTA_FIRMA]   NVARCHAR (250) NOT NULL,
    [FK_SOLICITUD] INT            NOT NULL,
    CONSTRAINT [PK_t_ges_firma] PRIMARY KEY CLUSTERED ([PK_FIRMA] ASC),
    CONSTRAINT [FK_t_ges_firma_t_ges_solicitud] FOREIGN KEY ([FK_SOLICITUD]) REFERENCES [gestiones].[t_ges_solicitud] ([PK_SOLICITUD])
);

