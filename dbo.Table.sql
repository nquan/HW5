CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Recipe Name] NVARCHAR(50) NOT NULL, 
    [Submitted By] NVARCHAR(50) NOT NULL, 
    [Ingredient #1] NVARCHAR(50) NOT NULL, 
    [Ingredient #2] NVARCHAR(50) NULL, 
    [Ingredient #3] NVARCHAR(50) NULL, 
    [Ingredient #4] NVARCHAR(50) NULL, 
    [Ingredient #5] NVARCHAR(50) NULL, 
    [Preparation] NVARCHAR(50) NOT NULL, 
    [Notes] NVARCHAR(50) NULL
)
