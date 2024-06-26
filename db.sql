USE [master]
GO
CREATE DATABASE [FlowerShop1]

GO
USE [FlowerShop1]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](200) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[stock] [int] NULL,
	[category_id] [int] NULL,
	[img] [ntext] NULL,
	[description] [nvarchar](1000) NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Hoa Khai Truong2')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Hoa Sinh Nhat')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Hoa Bo')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Hoa Gio')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Hoa Chia Buon')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Hoa Khai Truong1')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (1, 1, CAST(N'2019-08-07' AS Date), 100, N'alooo', 4)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (2, 2, CAST(N'2018-09-08' AS Date), 100, N'123', 2)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (3, 2, CAST(N'2020-05-05' AS Date), 100, N'ok', 3)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (4, 3, CAST(N'2021-06-04' AS Date), 100, N'alo', 4)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (5, 3, CAST(N'2022-09-06' AS Date), 100, N'Hello', 4)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (6, 3, CAST(N'2021-08-09' AS Date), 100, N'goof', 2)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (7, 1, CAST(N'2019-07-02' AS Date), 100, N'good', 3)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (8, 1, CAST(N'2022-06-16' AS Date), 11.5, N'quick', 1)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (9, 1, CAST(N'2022-07-05' AS Date), 9, N'quick', 2)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (10, 1, CAST(N'2022-07-05' AS Date), 20, N'', 3)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (11, 3, CAST(N'2022-07-13' AS Date), 17.5, N'quick', 4)
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes], [status]) VALUES (12, 4, CAST(N'2022-11-03' AS Date), 9, N'1', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 1, 2, 20, 6)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 3, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 5, 20, 4)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 1, 7, 20, 9)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 1, 8, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 15, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 2, 10, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 2, 11, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 3, 6, 20, 4)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 3, 7, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 4, 8, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 4, 15, 20, 3)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (13, 5, 13, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (14, 5, 12, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (15, 6, 11, 20, 6)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (16, 6, 10, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (17, 7, 16, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (18, 7, 5, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (19, 8, 16, 2.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (20, 8, 12, 4.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (21, 8, 28, 4.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (22, 9, 28, 4.5, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (23, 10, 25, 3, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (24, 10, 16, 2.5, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (25, 11, 26, 9, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (26, 11, 27, 8.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (27, 12, 1, 9, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (1, N'HV 9456', 9, 99, 5, N'https://flowershop.com.vn/wp-content/uploads/2017/02/52.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (2, N'HKT 9648', 3.5, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/61.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-01-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (3, N'HKT 9668', 4, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/25.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2022-01-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (4, N'HKT 9601', 4.5, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/28.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2021-01-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (5, N'HKT 9605', 2.5, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/43.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (6, N'HKT 9615', 4, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/26.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (7, N'HKT 9068', 3, 100, 1, N'https://flowershop.com.vn/wp-content/uploads/2017/02/21.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (8, N'HSN 9025', 4, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2020/09/48.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (9, N'HSN 9925', 5.5, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2017/02/13.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (10, N'HSN 9125', 4, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2017/02/34.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (11, N'HSN 9225', 6.5, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2017/02/54.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (12, N'HSN 9325', 7, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2017/02/58.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (13, N'HSN 9425', 8.5, 100, 2, N'https://flowershop.com.vn/wp-content/uploads/2017/02/59.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (14, N'HB 17234', 4, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2020/09/90.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (15, N'HB 17214', 5.5, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2020/09/91.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (16, N'HB 17254', 4, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2020/09/93.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (17, N'HB 17294', 6.5, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2017/02/45.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (18, N'HB 17295', 7, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2017/02/19.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (19, N'HB 17594', 8.5, 100, 3, N'https://flowershop.com.vn/wp-content/uploads/2017/02/7.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (20, N'HG 90329', 3.5, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2020/02/33.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (21, N'HG 90339', 5.5, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2020/09/91.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (22, N'HG 93039', 9, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2017/02/19.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (23, N'HG 92039', 8.5, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2017/02/43.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (24, N'HG 90395', 10, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2017/02/59.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (25, N'HG 90319', 8.5, 100, 4, N'https://flowershop.com.vn/wp-content/uploads/2017/02/25.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (26, N'HV 9456', 9, 99, 5, N'https://flowershop.com.vn/wp-content/uploads/2017/02/52.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (27, N'HV 9456', 8.5, 99, 5, N'https://flowershop.com.vn/wp-content/uploads/2017/02/13.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (28, N'HV 9456', 10, 100, 5, N'https://flowershop.com.vn/wp-content/uploads/2017/02/2.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (29, N'HV 9456', 8.5, 100, 5, N'https://flowershop.com.vn/wp-content/uploads/2017/02/1.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (1, N'Customer')
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (2, N'Huy01@gmail.com', N'Huy01@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (3, N'linh01@gmail.com', N'linh01@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 2)
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (4, N'linh@gmail.com', N'linh@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (5, N'tm01@gmail.com', N'christianjohn.se.vn@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [FlowerShop1] SET  READ_WRITE 
GO
