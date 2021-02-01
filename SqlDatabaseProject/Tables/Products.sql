CREATE TABLE [dbo].[Products] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Name]        NVARCHAR (80)    NOT NULL,
    [Description] NVARCHAR (255)   NULL,
    [CategoryId] UNIQUEIDENTIFIER NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Products_ToTable] FOREIGN KEY (CategoryId) REFERENCES Categories([Id])
);

