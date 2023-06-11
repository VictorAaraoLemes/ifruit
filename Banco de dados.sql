create table tblUsers
(
Uid int identity(1,1) primary key not null,
Username nvarchar(100)Null, 
Password nvarchar(100)Null,
Email nvarchar(100)Null,
Name nvarchar(100)Null,
Usertype nvarchar(50) default 'User'
)

CREATE TABLE tblCategory(
	[CatID] [int] IDENTITY(1,1) NOT NULL primary key,
	[CatName] [nvarchar](max) NULL,
)


create table tblProducts
(
PID int identity(1,1) primary key ,
PName   nvarchar(MAX),
PPrice decimal(16,2),
PCategoryID int,
PDescription nvarchar(MAX),

Constraint [FK_tblProducts_Category] FOREIGN KEY ([PCategoryID]) REFERENCES [tblCategory] ([CatID]),
)

CREATE TABLE tblProductImages(
	[PIMGID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Extention] [nvarchar](500) NULL,
	Constraint [FK_tblProductImages_ToTable] FOREIGN KEY ([PID]) REFERENCES [tblProducts] ([PID])
	)

CREATE TABLE tblCart(
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[PID] [int] NULL,
	[PName] [nvarchar](max) NULL,
	[PPrice] [decimal](16,2) NULL,
	[SubPAmount]  AS ([PPrice]*[Qty]),
	[Qty] [int] NULL,
)

CREATE TABLE tblOrderProducts(
	[OrderProID] [int] IDENTITY(1,1) NOT NULL primary key,
	[UserID] [int] NULL,
	[CartAmount] DECIMAL(16,2) NULL,
	[PID] [int] NULL,
	[Products] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[OrderDate] [datetime] NULL,
Constraint [FK_tblOrderProducts_ToTable] FOREIGN KEY ([UserID]) REFERENCES [tblUsers] ([uid])
)

Insert into tblOrderProducts(UserID,CartAmount,PID,Products,Quantity,OrderDate) Values ( (Select Uid from tblUsers where Uid = 2),(Select PPrice from tblCart where UID = 2), (Select PID from tblCart where UID = 2),(Select PName from tblCart where Uid = 2),(select Qty from tblCart where UID = 2), (SELECT CONVERT (datetime, SYSDATETIME())))


select UID, Sum(PPrice) as TotalPrice from tblCart where UID=2 group by UID
select UID, Sum(Qty) as QtyTotal from tblCart where UID=2 group by UID


select * from tblCart


select * from tblCart

select Uid from tblUsers WHERE Username = 'admin'





-------------------------- Criando Procedures --------------------------
create procedure procAllProducts
AS
select PROD.*,PRODI.* ,PRODI.Name as ImageName from tblProducts PROD
cross apply(
select top 1 * from tblProductImages PRODI where PRODI.PID = PROD.PID order by PRODI.PID desc
)PRODI
Return 0
end,

-------------------------- Criando Procedures --------------------------
CREATE PROCEDURE procProductDetails
(
@PID int
)
AS
SELECT * FROM tblProducts where PID = @PID
end
-------------------------- Criando Procedures --------------------------
create PROCEDURE procProductImages
(
@PID int
)
AS
SELECT * FROM tblProductImages where PID = @PID
end

create PROCEDURE procShowCart
(
@UserID int
)
AS
select P.*,C.*,PIMG.* from tblProducts P inner join tblCart C on P.PID = C.PID
cross apply(
	select top 1 * from tblProductImages PIMG where PIMG.PID = P.PID order by P.PID desc
)PIMG where C.UID = 2


CREATE PROCEDURE procDeleteCartItem
@CartID int
AS
BEGIN
DELETE FROM tblCart WHERE CartID = @CartID
END

select * from tblCart
