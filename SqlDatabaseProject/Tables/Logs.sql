CREATE TABLE [dbo].[Logs] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Message]   NVARCHAR (MAX) NULL,
    [Level]     NVARCHAR (128) NULL,
    [Timestamp] DATETIME2 (7)  NOT NULL,
    [Exception] NVARCHAR (MAX) NULL,
    [LogEvent]  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED ([Id] ASC)
);

