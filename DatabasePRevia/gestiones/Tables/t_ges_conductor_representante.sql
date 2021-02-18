CREATE TABLE [gestiones].[t_ges_conductor_representante] (
    [PK_CONDUCTOR_REPRESENTANTE] INT           NOT NULL,
    [STATUS]                     BIT           CONSTRAINT [DF_t_ges_conductor_representante_STATUS] DEFAULT ((1)) NOT NULL,
    [NOMBRE]                     NVARCHAR (15) NOT NULL,
    [P_APELLIDO]                 NVARCHAR (15) NOT NULL,
    [S_APELLIDO]                 NVARCHAR (15) NULL,
    [FK_TIPO_IDENTIFICACION]     INT           NOT NULL,
    [IDENTIFICACION]             NVARCHAR (15) NOT NULL,
    [P_TELEFONO]                 NVARCHAR (9)  NOT NULL,
    [S_TELEFONO]                 NVARCHAR (9)  NULL,
    CONSTRAINT [PK_t_ges_conductor_representante] PRIMARY KEY CLUSTERED ([PK_CONDUCTOR_REPRESENTANTE] ASC),
    CONSTRAINT [FK_t_ges_conductor_representante_t_cat_tipo_identificacion] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION])
);

