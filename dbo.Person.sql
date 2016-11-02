CREATE TABLE [dbo].[Person] (
    [Id]    INT            IDENTITY (1, 1) NOT NULL,
    [Name]  NVARCHAR (200) NOT NULL,
    [DOB]   NVARCHAR (100) NULL,
    [DOD]   NVARCHAR (100) NULL,
    [Photo] IMAGE          NULL,
    [StyleID] INT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Person_Style] FOREIGN KEY ([StyleID]) REFERENCES [Style]([Id])
);


GO

CREATE FULLTEXT INDEX ON [dbo].[Person] ([Name]) KEY INDEX [Person_Name_Index] ON [fulltext_catalog_name] WITH CHANGE_TRACKING AUTO
