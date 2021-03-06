USE [JewelryStoreDB]
GO
/****** Object:  Table [dbo].[Advertisments]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](500) NULL,
	[ProId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OderItems]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BuyingDay] [date] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](50) NULL,
	[StatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductGroups]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SubCateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProGroupId] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Size] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Display] [bit] NULL,
	[Description] [nvarchar](100) NULL,
	[Information] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[RoleId] [int] NOT NULL,
	[Lock] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (1, 2)
INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (2, 3)
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Hàng mới')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Trang sức vàng')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ProductGroups] ON 

INSERT [dbo].[ProductGroups] ([Id], [Name], [SubCateId]) VALUES (1, N'Bông tai kim cương', 1)
SET IDENTITY_INSERT [dbo].[ProductGroups] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (2, 1, 10, N'VỎ BÔNG TAI KIM CƯƠNG VÀNG TRẮNG 18K PNJ 00DDW000198', 24491000, 0, N'10mm,12mm,15mm', N'white,pink', N'https://www.pnj.com.vn/vo-bong-tai-kim-cuong-vang-trang-18k-pnj-00ddw000198.html?gender=female&category=bong-tai_bong-tai-vang-pnj', N'https://www.pnj.com.vn/vo-bong-tai-kim-cuong-vang-trang-18k-pnj-00ddw000198.html?gender=female&category=bong-tai_bong-tai-vang-pnj', N'https://www.pnj.com.vn/vo-bong-tai-kim-cuong-vang-trang-18k-pnj-00ddw000198.html?gender=female&category=bong-tai_bong-tai-vang-pnj', NULL, NULL, N'Brand:
PNJ
 
Loại đá chính:
Không gắn đá
 
Loại đá phụ (nếu có):
Diamond
 
Gender:
Nữ
 
Quà tặng cho người thân:
Cho Nàng
Cho Mẹ
 
Trọng lượng vàng tham khảo (phân vàng):
7.03263
 
Ổ hột:
4.0 ly
 
Chủng loại:
Bông tai
 
Tuổi vàng:  Vàng 18K')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'User')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [CateId]) VALUES (1, N'Bông tai', 2)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (1, N'tuannguyenanh', N'tuannguyenanh@gmail.com', N'0847070898', N'District9', N'tuannguyen7898', N'781998', N'NULL', 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (2, N'tuannguyen', N'anhtuan@gmail.com', N'0123456789', N'sá', N'tuan', N'ss', NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (3, N't', N't7898@gmail.com', N'12345', N'District9', N'tuannguyen', N'123', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [UQ__Carts__1788CC4DB87BDB0B]    Script Date: 5/21/2020 12:21:51 AM ******/
ALTER TABLE [dbo].[Carts] ADD UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Advertisments]  WITH CHECK ADD  CONSTRAINT [FK_Advert_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Advertisments] CHECK CONSTRAINT [FK_Advert_Pro]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [fk_CartItem_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [fk_CartItem_Pro]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[OderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OderItems] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OderItems] CHECK CONSTRAINT [FK_OrderItem_Pro]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_Pro_SubCate] FOREIGN KEY([SubCateId])
REFERENCES [dbo].[SubCategories] ([Id])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_Pro_SubCate]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Pro_ProGroup] FOREIGN KEY([ProGroupId])
REFERENCES [dbo].[ProductGroups] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Pro_ProGroup]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCate_Cate] FOREIGN KEY([CateId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCate_Cate]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChangePass]
	@userID INT,
	@oldPass NVARCHAR(30),
	@newPass NVARCHAR(30)
AS 
BEGIN
	IF EXISTS(SELECT * FROM dbo.Users WHERE Id = @userID AND Password != @oldPass)
		SELECT -1 AS result, N'Mật khẩu cũ không đúng' --Mật khẩu cũ ko đúng
	ELSE 
		BEGIN
			UPDATE dbo.Users
			SET Password = @newPass
			WHERE Id = @userID
			SELECT 1 AS result, N'Thay đổi thành công' --Mật khẩu đổi thành công
		END
END
GO
/****** Object:  StoredProcedure [dbo].[CheckOut]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckOut]
	@userID INT,
	@name NVARCHAR(50),
	@phone VARCHAR(15),
	@email NVARCHAR(50),
	@address NVARCHAR(100),
	@note NVARCHAR(50)
AS
BEGIN
	DECLARE @cartID INT = 0
	SET @cartID = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION

		--xử lý
		INSERT dbo.Orders
		        ( UserId ,
		          BuyingDay ,
		          Name ,
		          Phone ,
		          Email ,
		          Address ,
		          Note ,
		          StatusId
		        )
		VALUES  ( @userID, -- UserId - int
		          GETDATE() , -- BuyingDay - date
		          @name , -- Name - nvarchar(30)
		          @phone , -- Phone - nvarchar(15)
		          @email , -- Email - nvarchar(50)
		          @address , -- Address - nvarchar(100)
		          @note , -- Note - nvarchar(50)
		          1  -- StatusId - int
		        )
		INSERT INTO dbo.OderItems
		        ( Quantity, UnitPrice, OrderId, ProId )
		SELECT ci.Quantity, pro.Price - (pro.Price * pro.Discount), (SELECT TOP(1)Id FROM dbo.Orders ORDER BY Id DESC),ci.ProId
		FROM dbo.CartItems ci INNER JOIN dbo.Products pro ON pro.Id = ci.ProId
		WHERE ci.CartId = @cartID

		UPDATE dbo.Products SET Stock = Stock - oi.Quantity
		FROM dbo.Products pro INNER JOIN dbo.OderItems oi ON oi.ProId = pro.Id
		WHERE oi.OrderId = (SELECT TOP(1) Id FROM dbo.Orders ORDER BY Id DESC)

		DELETE dbo.CartItems
		WHERE CartId = @cartID

		IF(@@TRANCOUNT >0)
		BEGIN
			PRINT 'Commit Success'
			COMMIT TRANSACTION
			SELECT 1 AS result, N'thành công' AS message    -- Thành công
		END
	END TRY
	BEGIN CATCH
		IF(@@TRANCOUNT>0)
		BEGIN
			ROLLBACK TRANSACTION
			PRINT 'Commit Failure'
			SELECT 0 AS result, N'thất bại' AS message -- Thất bại
		END
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCartItem]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCartItem]
	@userID INT,
	@productID INT
AS
BEGIN
	DECLARE @cartId INT = 0
	DECLARE @cartItemId INT = 0

	SET  @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)

	IF(@cartItemId > 0)
		BEGIN
			DELETE dbo.CartItems
			WHERE Id = @cartItemId

			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message --thất bại
END




GO
/****** Object:  StoredProcedure [dbo].[GetAllAdvs]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllAdvs]
 AS
 BEGIN
 	SELECT * 
	FROM dbo.Advertisments
 END 
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[GetAllCategories]
 AS
 BEGIN
 	SELECT * FROM dbo.Categories
 END
GO
/****** Object:  StoredProcedure [dbo].[GetAllOrdersOfUser]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllOrdersOfUser]
	@userID INT
AS
BEGIN
	SELECT * FROM dbo.Orders
	WHERE UserId = @userID
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductGroups]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProductGroups]
AS
BEGIN
	SELECT * FROM dbo.ProductGroups
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProducts]
AS

BEGIN
	SELECT * FROM dbo.Products
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductsOfCart]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProductsOfCart]
	@userID INT
AS

BEGIN
	SELECT pro.*, ci.Quantity
	FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id
	WHERE ci.CartId = (SELECT Id FROM CartS WHERE UserId = @userID)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProGroupsOfSubCate]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProGroupsOfSubCate]
	@subCateID INT
AS
BEGIN
	SELECT * FROM dbo.ProductGroups
	WHERE SubCateId = @subCateID
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProsOfProGroup]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProsOfProGroup]
	@proGroupID INT
AS
BEGIN
	SELECT * FROM dbo.Products
	WHERE ProGroupId = @proGroupID
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSalePros]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSalePros]
AS
BEGIN
	SELECT * FROM Products
	 WHERE Discount>0
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCategories]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSubCategories]
AS
BEGIN
	SELECT * FROM dbo.SubCategories
END 
GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCatesOfCate]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSubCatesOfCate]
	@cateID INT
AS
BEGIN
	SELECT * FROM dbo.SubCategories
	WHERE CateId = @cateID
END
GO
/****** Object:  StoredProcedure [dbo].[GetCartCount]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCartCount]
@userID INT
AS
BEGIN
	SELECT COUNT(ProID)
	FROM dbo.CartItems INNER JOIN dbo.Carts
	ON Carts.Id = CartItems.CartId
	WHERE UserId = @userID
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetailProductById]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetailProductById]
@productID INT
AS
BEGIN
	SELECT * FROM dbo.Products
	WHERE Id = @productID
END
GO
/****** Object:  StoredProcedure [dbo].[GetOderItemByOder]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOderItemByOder]
@oderID INT
AS
BEGIN
	SELECT * FROM dbo.OderItems
	WHERE OrderId = @oderID
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrderByStatus]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderByStatus]
@statusID INT
AS
BEGIN
	SELECT * FROM dbo.Orders
	WHERE StatusId = @statusID
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserInfoByID]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserInfoByID]
	@UserID INT
AS
BEGIN
	SELECT * FROM dbo.Users
	WHERE Id = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
	@input NVARCHAR(30),
	@password VARCHAR(30)
AS 
BEGIN
	IF NOT EXISTS (SELECT * FROM  dbo.Users WHERE Username = @input OR Email = @input OR Phone = @input)
		SELECT -1 AS result, N'sai input' AS message -- sai input
	ELSE IF EXISTS( SELECT * FROM dbo.Users WHERE((Username = @input OR Email = @input OR Phone = @input) AND Password != @password))
		SELECT -2 AS result, N'đúng username, sai password' AS message -- đúng input, sai password
	ELSE
		SELECT Id AS result, N'đăng nhập thành công' AS message -- đăng nhập thành công
		FROM dbo.Users
		WHERE (Username = @input OR Email = @input OR Phone = @input) AND Password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[MinusCartItem]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MinusCartItem]
	@userID INT,
	@productID INT
AS
BEGIN
	DECLARE @cartID INT = 0
	DECLARE @cartItemID INT = 0
	DECLARE @quantity INT = 0

	SET @cartID = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemID = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)
	SET @quantity = (SELECT Quantity FROM dbo.CartItems WHERE CartId = @cartID AND ProId = @productID)

	IF(@cartItemID >0)
		BEGIN
			IF(@quantity >1)
				BEGIN
					UPDATE dbo.CartItems
					SET Quantity = Quantity-1
					WHERE Id = @cartItemID
				END
			ELSE
				BEGIN
					DELETE dbo.CartItems
					WHERE Id = @cartItemID
				END
			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message -- thất bại
END
GO
/****** Object:  StoredProcedure [dbo].[PlusCartItem]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlusCartItem]
	@userID INT,
	@productID INT,
	@quantity INT
AS
BEGIN
	DECLARE @cartId INT =0
	DECLARE @cartItemId INT = 0
	DECLARE @stock INT = 0

	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)
	SET @stock = (SELECT pro.Stock FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id WHERE ci.Id = @cartItemId)

	IF(@cartItemId >0)
		BEGIN
			IF(@quantity <= @stock)
				BEGIN
					UPDATE dbo.CartItems
					SET Quantity = Quantity + @quantity
					WHERE Id = @cartItemId

					SELECT 1 AS result, N'thành công' AS message --thành công
				END
			ELSE
				SELECT -1 AS result, N'số lượng tồn không đủ' AS message --số lượng tồn không đủ
		END
	ELSE
		BEGIN
			INSERT dbo.CartItems
			        ( Quantity, ProId, CartId )
			VALUES  ( @quantity, -- Quantity - int
			          @productID, -- ProId - int
			          @cartId  -- CartId - int
			          )	
			SELECT 1 AS result, N'thành công' AS message -- thành công
		END
END
GO
/****** Object:  StoredProcedure [dbo].[SignUp]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SignUp]
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone VARCHAR(15),
	@username NVARCHAR(30),
	@password NVARCHAR(30),
	@address NVARCHAR(100)
AS 
BEGIN
	IF EXISTS(SELECT * FROM  Users WHERE Username = @username)
		SELECT -1 AS result, N'trùng username' AS message -- trùng username
	ELSE IF EXISTS (SELECT * FROM Users WHERE Email = @email)
		SELECT -2 AS result, N'trùng email' AS message -- trùng email
	ELSE IF EXISTS (SELECT * FROM Users WHERE Phone = @phone)
		SELECT -3 AS result, N'trùng số điện thoại' AS message -- trùng phone
	ELSE
		BEGIN
			INSERT dbo.Users
			        ( Name ,
			          Email ,
			          Phone ,
			          Address ,
			          Username ,
			          Password ,
			          Avatar ,
			          RoleId ,
			          Lock
			        )
			VALUES  ( @name , -- Name - nvarchar(50)
			          @email , -- Email - nvarchar(50)
			          @phone , -- Phone - varchar(15)
			          @address , -- Address - nvarchar(100)
			          @username , -- Username - nvarchar(30)
			          @password , -- Password - nvarchar(30)
			          NULL , -- Avatar - nvarchar(500)
			          1 , -- RoleId - int
			          0  -- Lock - bit
			        )
			INSERT dbo.Carts
			        ( UserId )
			VALUES  ( (SELECT TOP(1) Id FROM dbo.Users ORDER BY Id DESC)  -- UserId - int
			          )
			SELECT 1 AS result, N'Đăng ký thành công' AS message --đăng ký thành công
		END
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserInfo]    Script Date: 5/21/2020 12:21:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserInfo]
	@userID INT,
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone VARCHAR(10),
	@address NVARCHAR(100),
	@avatar NVARCHAR(500)
AS
BEGIN
	IF EXISTS(SELECT * FROM dbo.Users WHERE Id != @userID AND Email = @email)
		SELECT -1 AS result, N'email đã được sử dụng' AS message -- email đã được sử dụng
	ELSE IF EXISTS(SELECT * FROM dbo.Users WHERE Id != @userID AND Phone = @phone)
		SELECT -2 AS result, N'số điện thoại đã được sử dụng' AS message --số điện thoại đã được sử dụng
	ELSE
		BEGIN
			UPDATE dbo.Users
			SET Name = @name,
				Email = @email,
				Phone = @phone,
				Address = @address,
				Avatar = @avatar
			WHERE Id = @userID

			SELECT 1 AS result, N'thành công' AS message -- thành công
		END
END
GO
