CREATE TABLE [dbo].[t_srv_reporte_averia] (
    [PK_REPORTE_AVERIA] INT            IDENTITY (1, 1) NOT NULL,
    [FK_DISTRITO]       INT            NOT NULL,
    [FK_TIPO_AVERIA]    INT            NOT NULL,
    [DIRECCION_EXACTA]  NVARCHAR (250) NULL,
    [LATITUD]           FLOAT (53)     NULL,
    [LONGITUD]          FLOAT (53)     NULL,
    [NIS]               NVARCHAR (7)   NULL,
    [NOMBRE]            NVARCHAR (15)  NULL,
    [PRIMERAPELLIDO]    NVARCHAR (15)  NULL,
    [SEGUNDOAPELLIDO]   NVARCHAR (15)  NULL,
    [EMAIL]             NVARCHAR (100) NULL,
    [DESCRIPCION]       NVARCHAR (500) NULL,
    [TELEFONO]          NVARCHAR (9)   NULL,
    [SINCRONIZADO]      BIT            NULL,
    [STATUS]            BIT            NOT NULL,
    CONSTRAINT [PK_T_SRV_REPORTE_AVERIA] PRIMARY KEY CLUSTERED ([PK_REPORTE_AVERIA] ASC),
    CONSTRAINT [FK_t_srv_reporte_averia_t_cat_distrito] FOREIGN KEY ([FK_DISTRITO]) REFERENCES [catalogos].[t_cat_distrito] ([PK_DISTRITO]),
    CONSTRAINT [FK_T_SRV_REPORTE_AVERIA_T_CAT_TIPO_AVERIA] FOREIGN KEY ([FK_TIPO_AVERIA]) REFERENCES [dbo].[t_cat_tipo_averia] ([PK_TIPO_AVERIA])
);





