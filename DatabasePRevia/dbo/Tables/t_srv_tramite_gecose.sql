﻿CREATE TABLE [dbo].[t_srv_tramite_gecose] (
    [PK_TRAMITE_GECOSE]      INT            IDENTITY (1, 1) NOT NULL,
    [NIS]                    NVARCHAR(7),
    [PROPIETARIO]            NVARCHAR (100) NULL,
    [MEDIDOR]                NVARCHAR (100) NULL,
    [LOCALIZACION]           NVARCHAR (100) NULL,
    [FK_TIPO_IDENTIFICACION] INT            NULL,
    [IDENTIFICACION]         NVARCHAR (100) NULL,
    [NOMBRE]                 NVARCHAR (200) NULL,
    [TELEFONO]               NVARCHAR (9)  NULL,
    [EMAIL]                  NVARCHAR (100) NULL,
    [AUTORIZACION_CORREO]    BIT            NULL,
    [GESTION_ANONIMA]        BIT            NULL,
    [DIRECCION_DOMICILIO]    NVARCHAR (500) NULL,
    [DETALLE]                NVARCHAR (MAX) NULL,
    [FECHAINGRESO]           DATE           NULL,
    [STATUS]                 BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_T_SRV_TRAMITE_GECOSE] PRIMARY KEY CLUSTERED ([PK_TRAMITE_GECOSE] ASC),
    CONSTRAINT [FK_T_SRV_TRAMITE_GECOSE_T_CAT_TIPO_IDENTIFICACION] FOREIGN KEY ([FK_TIPO_IDENTIFICACION]) REFERENCES [catalogos].[t_cat_tipo_identificacion] ([PK_TIPO_IDENTIFICACION])
);



