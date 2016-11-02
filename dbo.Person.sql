CREATE TABLE [dbo].[Person] (
    [Id]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (200) NOT NULL,
    [DOB]     NVARCHAR (100) NULL,
    [DOD]     NVARCHAR (100) NULL,
    [Photo]   NVARCHAR(200)          NULL,
    [StyleID] INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Person_Style] FOREIGN KEY ([StyleID]) REFERENCES [dbo].[Style] ([Id])
);

