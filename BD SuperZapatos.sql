
CREATE DATABASE SuperZapatos
GO

USE SuperZapatos
GO

IF OBJECT_ID('dbo.Article','U') IS NOT NULL
BEGIN 
	DROP TABLE dbo.Article
END
IF OBJECT_ID('dbo.Store','U') IS NOT NULL
BEGIN 
	DROP TABLE dbo.Store
END

CREATE TABLE dbo.Store 
(
	id	INT PRIMARY KEY IDENTITY,
	[name]		VARCHAR(150),
	[address]	VARCHAR(250)
)
GO

insert into Store values ('Super Store 1', 'Somewhere over the rainbow 1')
insert into Store values ('Super Store 2', 'Somewhere over the rainbow 2')
insert into Store values ('Super Store 3', 'Somewhere over the rainbow 3')

CREATE TABLE dbo.Article 
(
	id		INT PRIMARY KEY IDENTITY,
	[name]			VARCHAR(150),
	[description]	VARCHAR(250),
	price			DECIMAL(10,2),
	total_in_shelf	INT,
	total_in_vault	INT,
	store_id		INT FOREIGN KEY (store_id) REFERENCES Store(id)
)
GO

insert into dbo.Article values ('green shoes 1', 'The best quality of shoes in a green color 1', '20.15',25,40,1)
insert into dbo.Article values ('black shoes 2', 'The best quality of shoes in a black color 2', '20.15',25,40,2)
insert into dbo.Article values ('brown shoes 3', 'The best quality of shoes in a brown color 3', '20.15',25,40,3)
insert into dbo.Article values ('pink shoes 4', 'The best quality of shoes in a pink color 4', '20.15',25,40,1)
insert into dbo.Article values ('white shoes 5', 'The best quality of shoes in a white color 5', '20.15',25,40,2)
insert into dbo.Article values ('gray shoes 6', 'The best quality of shoes in a gray color 6', '20.15',25,40,3)
        
	

	
		