CREATE TABLE [Taught]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [TaughtId] INT NOT NULL, 
    CONSTRAINT [FK_Taught_Person] FOREIGN KEY ([Id]) REFERENCES [Person]([Id]) 
)
