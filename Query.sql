CREATE TABLE [User](
	Email VARCHAR(255) PRIMARY KEY NOT NULL,
	[Name] VARCHAR(255) NOT NULL,
	[Password] VARCHAR(255) NOT NULL,
	Gender CHAR(6) NOT NULL,
	BirthDate DATETIME NOT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	[Address] VARCHAR(255) NOT NULL,
	[Role] VARCHAR(10) DEFAULT 'Member'
)
GO

CREATE TABLE [Product] (
    [ProductId]          INT          IDENTITY (1, 1) NOT NULL,
    [ProductName]        VARCHAR (50) NOT NULL,
    [ProductCategory]    VARCHAR (50) NOT NULL,
    [ProductPrice]       INT          NOT NULL,
    [ProductStock]       INT          NOT NULL,
    [ProductPicture]     VARCHAR (50) NOT NULL,
    [ProductDescription] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);
