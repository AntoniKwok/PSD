CREATE TABLE [dbo].[Product] (
    [ProductId]          INT          IDENTITY (1, 1) NOT NULL,
    [ProductName]        VARCHAR (50) NOT NULL,
    [ProductCategory]    VARCHAR (50) NOT NULL,
    [ProductPrice]       INT          NOT NULL,
    [ProductStock]       INT          NOT NULL,
    [ProductPicture]     VARCHAR (50) NULL,
    [ProductDescription] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

