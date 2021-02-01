CREATE TABLE [dbo].[Categories] (
    [Id]   UNIQUEIDENTIFIER NOT NULL,
    [Name] NCHAR (10)       NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([Id] ASC)
);

