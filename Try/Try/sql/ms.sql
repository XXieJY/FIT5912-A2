CREATE TABLE [dbo].[Table]
(
	[userid] INT NOT NULL PRIMARY KEY, 
    [fname] VARCHAR(50) NOT NULL, 
    [lname] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [sex] VARCHAR(50) NOT NULL, 
    [nation] VARCHAR(50) NOT NULL, 
    [food] VARCHAR(50) NULL, 
    [techs] VARCHAR(50) NULL
)

CREATE TABLE [dbo].[products]
(
	[cargoid] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [weight] VARCHAR(50) NULL, 
    [price] VARCHAR(50) NULL, 
    [origin] VARCHAR(50) NULL, 
    [url] VARCHAR(50) NULL, 
    [imgurl] VARCHAR(50) NULL
)


