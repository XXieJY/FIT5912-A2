CREATE TABLE [dbo].[products]
(
	[cargoid] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [weight] VARCHAR(50) NULL, 
    [price] VARCHAR(50) NULL, 
    [origin] VARCHAR(50) NULL, 
    [url] VARCHAR(50) NULL, 
    [imgurl] VARCHAR(50) NULL
)




INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'1', N'blueburry cake', N'1.5', N'270', N'China', N'www.taobao.com', N'../productsimg/blueburry.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'2', N'burrycheese cake', N'1.7', N'300', N'China Taiwan', N'www.amazon.com', N'../productsimg/burrycheese.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'3', N'car cake', N'1.3', N'600', N'China', N'www.sina.com', N'../productsimg/car.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'4', N'cheese cake', N'1.9', N'300', N'Malaysia', N'www.mla.com', N'../productsimg/cheese.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'5', N'chocolate cake', N'2.3', N'800', N'China', N'www.cn.com', N'../productsimg/chocolateburry.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'6', N'icecream cake', N'0.9', N'700', N'China', N'www.cake.com', N'../productsimg/icecream.jpg')
INSERT INTO [dbo].[products] ([cargoid], [cargoname], [weight], [price], [origin], [url], [imgurl]) VALUES (N'7', N'mango cake', N'1.2', N'900', N'Japan', N'www.jp.com', N'../productsimg/mango.jpg')
