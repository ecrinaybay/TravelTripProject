--USE [TravelDb2]
--GO
CREATE DATABASE[TravelDb2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdresBlogs]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdresBlogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[AdresAcik] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdresBlogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizdas]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizdas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FotoUrl] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkimizdas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisims]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.iletisims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 4.01.2024 22:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202312242018002_AutomaticMigration', N'TravelTripProject.Migrations.Configuration', 0x1F8B0800000000000400ED5B5B6FDB36147E1FB0FF20E8691B522B495FB6C06E913ACD66B4498AD829B6A782918E1D2E14A59154606FD82FDBC37ED2FEC28EEED4CD962F72D220E84B4D91DF393C37DEBEFCF7CFBFFDB77397190F2024F5F8C03CEA1D9A0670DB73289F0DCC404D5FFD68BE7DF3ED37FDF78E3B373EA7FD5E87FD70249703F34E29FFC4B2A47D072E913D97DAC293DE54F56CCFB588E359C787873F594747162084895886D1BF0EB8A22E443FF0E7D0E336F82A20ECC27380C9A41DBF8C2354E392B8207D62C3C09C08F2006C22A8FF4978BF83AD7AF198DE98723A654498C629A304151B039B9A06E1DC5344A1DA273712C64A787C36F6B181B0C9C207EC37254C42329D93BC7BDB991D1E8733B3F28129941D48E5B96B021EBD4E4C6595876F64703333251AF33D1A5D2DC25947061D98A78E4B11B72CE964C844D8AB85B17B11C48151E97890050BC654F8EFC018064C0502061C0225083B303E05B78CDA1F6031F1EE810F78C098AE2F6A8CDF0A0DD884F83E08B5B88669328BD1996958C571567960364C1B134F71C4D5EB63D3B844E1E49641160E9A39C6CA13F03370104481F389280502BD3972203268457A49D687109A539BA622310831BD4CE382CC3F029FA9BB8189FF358D733A07276D49D4B8C18168F281A94400AB248DE954C08EA5F4AD3C6C56049300F98E79B36D032A817909AA65B2DE11C9E87DE711756AD37B465CD2BDA0D0EDA1B4CE255D10CA3A17320106D3B066772CE783C703F7B1327EFB647FC9F32792E71322E85D2AE50C359DE0F6AC66624FA45A84713372C96CD78B1D4ABA240F7416B9AE24F3374F042E06AD348D6B60510F7947FD789FD94BBF7E8993E25C78EEB5C7B461D1872F68E71928D4DAABFB3AF602616F9A8D29D4761999A2BC6465AB2DDDA9D3FDAE6E2F0B56E4F7BDE42D7556F9A96D46C6A9B67932A6E9569F8C69AA6E948CBF90FB7BEAD23F1DB25D3AE6382F09B94CD6B9A7BC1BD17D9A74B4C2B58E2BCA405149DDEDA22A457989A9E54792B1B720CEF3A8EFE141A1FB998024BFEF29354EA5F46C1A39BAB4018AAB7E51D1F7DC31962E01B1CAFAE2819A63E0531F431DC50FCC1F2AB36F02CD36793968BC1015018FCC728E5CF1333C372A304EEDF8C27048A44D9CAADDD1264EB105D30A4418D7840D712DC444A55C557390729BFA842D53BB34A865EA864A65F0E52F67E0030FB36E990FDAC84DF70F55D9998892A156D9A56F6981542DBD3846E108108902E16F98AB9AF27B2321A9C03209E372B084786350FADD2B9E25F2E84E4225B994ADC45A7978724D560F915DC5AD8069426835583B115500F22C5A0192EF70EA60F47DD40AA07451AB83C997CD1288E6FCEABC92EDA3D6A7767F598EC555B52653BC60C14A48AFAA2E1A4CE2C57291284EAEA6A666D19D3FB858F18B4BFA3263353CCDF42F88EF6379D79E6A9216631CBFD30C5F8DD77FB170630CCB96350F1799B699245CDFC90C4A5FC32475E09C0AA9CE8822B7245C60868E5BD32DCEE586B04AA514D2B5EAA434D2D2EEE1FF933B95768F2735852FC13AC7D9B961D58C36329ABF1BC645EF6504816B364D438F052E6FAEDECDA3B5E70B1D446B6E8F953C50E838495315A36F95CC50A9F915E35716C9A22B5B3A3A2BACBB76765A94377178E3D86E9C9E5E3BEA08695B7B94FCB4A4E3E4AD6B20E5CF0305A8BCB93D56BCDFD661E296F608D9EDBE0E9235AE915AF1ED7D21ADE2A627930E5D64C28649F0F5C57F72AB5E8892B8E9317248BB342F4C2B6F7E325197EF8B761B79D9AE74FDE86B1EDAF1B21B5D31D7AEBCD1977DD6BDE4925887489AD68BC2F008570EC1BA63DDA3C59F7E28D96D046A079AF56370D9E06EA230BB57D521B2C62EABD823793E3F45EED6EFD909747DAF370FEDC6E7D9BD6771A79534EEB3DEC49796E5EDD15A3AC437920525E2A63D475CE5C85DEE9249CF8EDEA523763F39EEAEA64856CEBF7117D340E33C50273CFB8E175281DB0B3BF4C67FB021A338DFBCC305AE2F53902ABEE0378F0F8F8E4BB4CAA74371B4A47458CD754185E7B8F7270A1A9A74E523C49A1C8B0A9B903F1061DF11F19D4BE6DFEB706B3306D740DA8015F83CCC5FE4E36C65FBF25BE2766065FEDC5668FA93D45640251EDC565805AE5B17B1FA12A6B52ED4A9610EAAA776410DDB4AA50AFDAB8B68A83FF07DB5115147597A1A35A2403DDA3A2E727A5164C6CA3BDD883B301F987F45434E8CD1AF5FE25107C695C09DCF897168FCBDC2B89BB0809E47109568368FB5FCAD4F97791EE62F31529E46FAEACC92ED34D2D9233B88864D1922F1ABEF3EC91BD5A7DE0D19291BB1401AAEE33B637D7C2D4C8FF22372C3FD51E18CD948E7888FE0B881BAF5D0B77128A71490B6548FE54C8F7A09394BA40513A491085287DD0E368FDD2514913AF8466AC41206C90A02499D9802FDA425C36429C1A44E88464DD92BFF44F769FE84D6866A52CB52E9866152BDD6C25CD6FE3E18EB88A4B31C22FC6B610E76218BB33E233EF5D26252D228ED52597514C1530D39158A4E89ADF0B30D5246D4C5CF8405D8E5BD7B0BCE885F05CA0F144E19DC5B56608F86456999FC884653D4B97FE547A4F55D4C01D5A4E1C1EC8ABF0B287332BDCF6BB6AE0D1061B54B362AA12F55B861992D32A44B8FB7044ACC9715E909B83E433079C5C7E40136D1ED46C24798117B91DE4E3683AC7644D1ECFD334A6682B832C1C8C7E34F8C61C79DBFF91FA963A5EC263F0000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Kullanici], [Sifre]) VALUES (1, N'a', N'1')
INSERT [dbo].[Admins] ([ID], [Kullanici], [Sifre]) VALUES (2, N'b', N'2')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (1, N'Eyfel''in Önünde Bir Gündüz Geçirmek Deneme', CAST(N'2023-08-20T00:00:00.000' AS DateTime), N'Paris, Fransa''nın başkenti ve 105 kilometrekare (41 milkare)''den fazla alanda 2,175,601 (2018 itibarıyla tahmini nüfus) nüfusu ile en kalabalık şehridir.[1] 17. yüzyıldan beri Paris Avrupa''nın en önemli finans, diplomasi, ticaret, moda, gastronomi, bilim ve sanat merkezlerindendir.

Paris şehri tahmini 12,174,880 nüfusu ile veya Fransa nüfusunun yaklaşık yüzde 18''i ile (2017 itibarıyla) Paris Bölgesi''nin veya Île-de-France bölgesinin yönetim merkezidir.[2] Paris Bölgesinin 2017''de 709 milyar € (808 milyar $) GSYİH''sı vardı.[3]

Economist Intelligence Unit''in 2018''deki Dünya Çapında Yaşam Maliyeti Anketine göre Paris, Zürih, Hong Kong, Oslo ve Cenevre''nin önünde ve Singapur''dan sonra dünyanın en pahalı ikinci şehriydi.[4] Başka bir kaynaksa Paris''i 2018''de Singapur ve Hong Kong ile eşit derecede en pahalı olarak sıraladı.[5][6]

Paris, iki uluslararası havalimanı tarafından hizmet verilen önemli bir demiryolu, otoyol ve hava taşımacılığı merkezidir: Paris–Charles de Gaulle (Avrupa''nın en yoğun ikinci havalimanıdır) ve Paris–Orly.[7][8]

1900 yılında açılan şehrin metro sistemi Paris metrosu günde 5.23 milyon yolcuya hizmet verir;[9] Avrupa''nın Moskova Metrosu''ndan sonra en yoğun ikinci metro sistemidir. Gare du Nord dünyanın en yoğun 24. tren istasyonudur ancak 2015 yılında 262 milyon yolcu ile Japonya dışında bulunan en yoğun tren istasyondu.', N'https://www.cesurgezgin.com/wp-content/uploads/2018/07/Eyfel-Kulesi-Hakk%C4%B1nda-Bilgiler.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (2, N'Hayaller Şehri Roma', CAST(N'2023-06-22T00:00:00.000' AS DateTime), N'Roma (Latince: Rōma) veya Roma komünü, İtalya''nın, Lazio bölgesinin ve aynı zamanda Roma ilinin başkentidir. Roma hem şehir hem de özel komün statüsü taşır. Tiber ve Aniene nehirleri arasında ve Akdeniz''e yakındır. Yaklaşık 2,7 milyon nüfuslu şehirde, Katoliklerin ruhani lideri Papa''nın yaşadığı bağımsız devlet Vatikan da yer almaktadır. Bu sebeple Roma''ya bazı kaynaklar tarafından iki devletin başkenti de denilmektedir.

Roma, İtalya''nın en kalabalık şehri ve 1285.3 km²lik yüzölçümüyle Avrupa''nın en geniş yüzeye yayılmış başkentlerinden biridir. Milano, Napoli, Torino, Bologna, Palermo, Katanya, Floransa, Cenova ve Bari''nin toplamından daha geniş bir yüzölçümüne sahiptir. Roma Büyükşehir''in toplam nüfusu 4 milyondur.

75 milyar avroluk gelirle İtalya''nın toplam millî hasılasının %6,5''ini tek başına kazanır.

2800 yıllık şehir, sırasıyla ve resmi adlarıyla; Roma Krallığı''nın, Roma Cumhuriyeti''nin, Roma İmparatorluğu''nun, Papalık Yönetiminin, İtalya Krallığı''nın ve İtalya Cumhuriyeti''nin merkezi ya da başkenti olmuştur.', N'https://www.flypgs.com/blog/wp-content/uploads/2019/05/roma-da-gezilecek-yerler-kolezyum.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (3, N'Eyfel''den Sonra Rotamız: Lyon', CAST(N'2023-06-23T00:00:00.000' AS DateTime), N'Lyon, Fransa''nın güneydoğu tarafında yer alan bir kenttir. Fransa''nın Rhône yönetiminin merkezidir ve Rhône-Alpes bölgesinde yer alır. Konum olarak Marsilya ile Paris''in arasıda yer alır. Lyon, Paris''ten 470 kilometre, Marsilya''dan 320 kilometre, Cenevre''den 160 kilometre, Torino''dan 280 kilometre, Barselona''dan 600 kilometre uzaklıktadır. Lyonlular kendilerine Lyonnais derler.

Lyon''un tarihine bakacak olursak, kimyasal alanda birçok petrokimyasal endüstriye ev sahipliği yapmaktadır. Fransız iş dünyasının merkezlerinden biri olan Lyon, Fransız gastronomisinin merkezidir. Şehrin Auguste ve Louis Lumière kardeşler nedeniyle, sinema tarihinde önemli bir yeri vardır. Şehrin futbol takımı Olympique Lyonnais''tir. Lyon''un şehir merkezindeki nüfusu 472.305''tir. Bağlı bölgeler ile birlikte bu nüfus 1.748.271 (2006) olur. Şehir Rhône-Alpes bölgesinin başkentidir. Toplam bölgenin nüfusu 3 milyona yakındır.[1]

Lyon''da genelde kimyasal ve biyoteknik sanayisi hakimdir. Öte yandan şehir Fransa bilişim teknolojileri ve yazılımlarının merkezidir.

Lyon UNESCO Dünya Mirasları listesindedir.[2] Şehir tarihsel olarak dünyanın ipek ticaretinin merkezidir. Lyon içerisinde Interpol''ün merkezini, uluslararası haber kanalı Euronews''in merkezini ve Uluslararası Kanser Araştırmaları Ajansı''nı barındırır.', N'https://www.flypgs.com/blog/wp-content/uploads/2015/05/lyon.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (4, N'Fransa''ya Veda Ederken: Louvre Müzesi', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Louvre Müzesi, dünyanın en büyük sanat müzesidir. Fransa''nın başkenti Paris''te, Louvre Sarayı''na kurulmuştur. Şehrin içinden geçen Sen Nehri''nin kıyısında yer alır. Tarih öncesi çağlardan, 21. yüzyıla kadar uzanan, oldukça geniş bir koleksiyon yelpazesi vardır. Yaklaşık 35.000 kadar tarihî sanat eseri, 72.735 metrekarelik bir alanda sergilenmektedir.[4] 2017 yılında, 8,1 milyon ziyaretçi oranıyla dünyanın en çok ziyaret edilen sanat müzesi seçilmiştir.[5]

Sadece içeriğiyle değil, içine kurulmuş olduğu tarihî yapıyla da oldukça önem taşıyan müzenin binası; 12. yüzyılın sonları ile 13. yüzyılın başları arasında dönemin kralı II. Philippe tarafından kale olarak yaptırılmış fakat şehrin hızla gelişip kale sınırlarını aşması sonucunda yapı savunma özelliğini kaybettiği için 1546 yılında I. François''nın emriyle Fransız krallarının resmî konutu olarak kullanılması adına saraya çevrilmiştir. Bugün müzenin bodrum katında hâlâ kalenin kalıntılarından izler görülebilir.[6] Defalarca genişletme çalışmaları geçirdikten sonra nihayetinde 1682 yılında XIV. Louis''nin Versay Sarayı''na taşınma kararı vermesiyle beraber Louvre, aralarında Yunan ve Roma medeniyetlerinden kalma önemli eserlerin de bulunduğu kraliyet koleksiyonunun sergilenmeye başladığı, müze olmayan ama aynı işlevi gören bir yer hâline gelmiştir.[7] Bu bağlamda yaklaşık 10 yıl kadar kullanıldıktan sonra 1692 yılında kraliyet adına kurulmuş olan edebiyat ve heykeltıraşlık okulları buraya taşınmış ve 100 yıl boyunca burada eğitime devam etmişlerdir. Fransız Devrimi sırasında kurulan ulusal meclis, Louvre''un Fransız sanatının eserlerinin sergilendiği bir müze olarak kullanılması gerekliliğine karar verdiği için tekrar müzeye çevrilmiştir.

10 Ağustos 1793 tarihinde, 537 parçadan oluşan ve çoğu kraliyet ailesi ile kiliseye ait olan bir resim koleksiyonu ile açılan müze, binanın bu amaca yönelik inşa edilmemiş olmasından dolayı mimari açıdan sıkıntılar yaşamış ve 1796-1801 yılları arasında kapalı kalmıştır. Napolyon Bonapart devrinde içerik açısından iyice zenginleştirilen müze bir dönem Musée Napoléon (Napolyon Müzesi) olarak da adlandırılmış fakat Fransız ordusunun işgal ettiği yerlerden çekilmesi sonucunda yurt dışından etik olmayan yollarla kaçırılan bu eserler asıl sahiplerine iade edilmiştir. Yine de XVIII. Louis, X. Charles ve İkinci Fransız İmparatorluğu devirlerinde büyümesini sürdüren müzenin koleksiyonuna 20.000 yeni eser ilave edilmiştir. Üçüncü Fransız Cumhuriyeti döneminde de satın almalar ve yapılan bağışlar yoluyla içerik sayısı artış göstermiştir. Bugün müzenin sahip olduğu tüm sanat koleksiyonu sekiz ayrı başlığa göre ayrılmış durumdadır ve bu düzene göre sergilenmeye devam etmektedir.', N'https://image.hurimg.com/i/hurriyet/75/1110x740/5f5895ff18c7732ff0b547a3.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (5, N'Bir Sonraki Rota Belçika', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Belçika veya resmî adıyla Belçika Krallığı, Batı Avrupa''da bulunan bir devlettir. Avrupa Birliği''ne üyedir. Birliğin ve NATO gibi bazı uluslararası organizasyonların merkezlerini barındırır.[5] 30.528 km²''lik bir alanı kaplayan ülkenin nüfusu yaklaşık 11,4 milyon kişidir.

Cermen ve Latin dünyası arasında bir sınır oluşturan Belçika''da Felemenkler tarafından Felemenkçe, Valonlar tarafından Fransızca ve küçük bir Alman grup tarafından Almanca konuşulur. Belçika federal bir devlet yapısına sahip olup Felemenkçe''nin resmî dil olduğu Flaman Bölgesi, Fransızcanın resmi dil olduğu Valon Bölgesi ve her iki dilin de resmî dil sıfatını taşıdıkları Brüksel Başkent Bölgesi''nden oluşur.[6] Son olarak, tamamı Valon Bölgesi''nin sınırları içinde kalan ve Almanya''ya komşu Almanca konuşan küçük bir topluluk, Valon bölgesine bağlı olmakla birlikte bazı alanlarda özerkliğe sahiptir ve yaşadıkları bölgede Almanca resmi dildir.[7] Belçika''nın dilsel çeşitliliği ve bununla ilgili politik ve kültürel anlaşmazlığı, Belçika tarihine ve yönetim sistemine yansımıştır.[8][9]

Belçika adı, Kelt ve Cermen karışımı bir halk olan Belgae''lerin yaşadığı, Roma eyaleti Galya''nın en kuzeyindeki Gallia Belgica''dan kaynaklanır.[10][11] Belçika, Hollanda ve Lüksemburg tarihsel olarak Benelüks''ten daha büyük bir alanı kaplayan Alçak Ülkeler diye anılır. Orta Çağ''ın bitiminden 17. yüzyılın başlarına kadar ticari ve kültürel açıdan bir refah merkezi olan ülke, 16. yüzyıldan 1830''daki Belçika Devrimi''ne kadar Avrupa güçleri tarafından birçok muharebeye sahne olarak Avrupa''nın savaş alanı olarak tanımlanmış.[12] ve bu unvanı I. Dünya Savaşı ile II. Dünya Savaşı ile de güçlenmiştir.

Bağımsızlığın üzerine ülke, hevesle Endüstri Devrimi''ne katılmış[13][14] ve 20. yüzyıl boyunca Afrika''da birçok koloni kurmuştur.[15] Belçika''da 20. yüzyılın ikinci yarısına ise bir yandan Felemenkler ve Frankofonlar arasındaki çatışma diğer yandan Flaman ve Valon Bölgeleri arasındaki eşit olmayan ekonomik gelişme damgasını vurmuştur. Bu hâlâ devam eden çatışmalar ülkede üniter devlet yapısından federal devlete doğru bir dizi reformun yapılmasına neden olmuştur.', N'https://w0.peakpx.com/wallpaper/901/702/HD-wallpaper-ghent-belgium-ghent-street-houses-belgium-dusk.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (6, N'Brüksel''de Akşam Yemeği Deneme', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Belçika mutfağı günümüzdeki halini alana dek çokça şekil değiştirmiştir. Ortaçağ’da baharat ticaretinin etkisiyle Belçika mutfağının önemli bir parçası haline gelen baharatlar; etten sebze yemeklerine, tatlı ve şaraplara kadar birçok yerde kullanılmıştır. Ayrıca manastır bahçelerinde maydanoz, kekik, tarhun, Frenk maydanozu, adaçayı gibi taze otlar yetiştirilmiştir.

Tarih boyunca Avrupalı halklar tarafından işgal edilmiş Belçika’da, yerliler işgalcilerin meşhur pişirme teknikleri ile kullandıkları malzemelerden etkilenmiş ve bunları benimsemiştir. Günümüzde de Fransa, Almanya ve Hollanda gibi komşu ülkelerin mutfaklarından esintiler taşıyan Belçika mutfağı, çoğu zaman bol porsiyon yönünden Alman, yemeklerdeki ustalık yönünden ise Fransız mutfağına benzetilmektedir.', N'https://www.lofficiel.be/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F63746%2F1646711346-1626700168074794-bagheera-brussels-maxime-prokaz.jpg%3Fauto%3Dformat%252Ccompress%26cs%3Dsrgb&w=3840&q=75')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (7, N'Hollanda''ya Doğru Giderken', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Sanat
Hollanda''nın tanınmış birçok ressamı vardır. Orta Çağ''da Hieronymus Bosch ve Pieter Brueghel (baba) önde gelen Hollandalı öncüler arasında gösterilebilir. Hollanda Altın Çağı boyunca, Hollanda Cumhuriyeti müreffehti ve gelişen bir sanatsal harekete tanık oldu. Bu 17. yüzyıl dönemini kapsayan Hollandalı Ustalar; Rembrandt, Johannes Vermeer, Jan Steen ve Jacob van Ruisdael''i içeriyordu. 19. ve 20. yüzyılın ünlü Hollandalı ressamları arasında Vincent van Gogh ve Piet Mondrian vardır.

Spor
Hollanda''daki 16,8 milyon kişinin yaklaşık 4,5 milyonu ülkedeki 35.000 spor kulübünden birine kayıtlıdır. 15 ile 75 yaş arasındaki nüfusun yaklaşık üçte ikisi haftalık olarak spor yapıyor.[39] Futbol Hollanda''da en popüler takım sporudur ve onu çim hokeyi ve voleybol izlemektedir.[40]

Hollanda millî futbol takımı 1974, 1978 ve 2010 Dünya Kupası''nda ikinci oldu ve 1988 Avrupa Şampiyonası''nı kazandı. Sports Illustrated''in tüm zamanların en büyük 50 futbolcusu arasında, Johan Cruyff (#5), Marco van Basten (#19), Ruud Gullit (#25) ve Johan Neeskens (#36) Hollandalıdır.', N'https://lh5.googleusercontent.com/p/AF1QipPf4Ii7b5Ctrti-elp2d7iOtPj3EJlozpSBGfod=w810-h468-n-k-no')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (8, N'Amsterdam''da Bisiklet ile Bir Gün Geçirmek', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Amsterdam, Hollanda''nın başkenti ve ülkenin en yüksek nüfuslu şehridir. Ancak Hollanda, hükûmetin ve meclisin bulunduğu Lahey''den yönetilir. Şehir, ülkenin batısında, Kuzey Hollanda eyaletinde yer almaktadır. 12. yüzyılda Amstel ırmağının kıyısında bir balıkçı köyü olarak kurulan Amsterdam, Hollanda''nın kişi sayısı bakımından en büyük, kültürel ve parasal yönden de en önemli kentidir. Şehir merkezinde 2018 sayımına göre 872.680 kişi yaşasa da, şehir sınırları içinde bu sayı 1.558.755 ve metropoliten bölgede 2.480.394''tür.

Adı, ilk kurulduğu zamanlarda Amstel ırmağının üzerine kurulan su bendi ("dam") olan Amstelredamme''ın zamanla Amsterdam olmasından gelir.

Amsterdam, çoğunlukla 17. yüzyıldan kalma yapılarıyla, Avrupa''daki en köklü kent dokularından birini barındırır. Kentin eski bölümü iç içe geçmiş ay biçimindeki kanallardan oluşur. Bu kanalların iki yakasındaki tarihî evlerin bir bölümü bugün ev, geri kalanı ise, kamu ya da özel işyeri olarak kullanılır. Özellikle, Amsterdam''da bulunan Dam Meydanı çok ünlüdür ve dünyanın birçok yerinden ziyaretçi akınına uğramaktadır.

Hollanda''nın birçok yerinde olduğu gibi, Amsterdam''da da kanallar bataklık olan bölgede öncelikle suları denetim altına almak için kazılmıştır. Bunun yanı sıra savunma ile ulaşım için de kullanılmıştır. Bazı kanalların üzerinde tekne evler bulunur. Bunlar genellikle eski tekneler ya da baştan ev olarak tasarlanmış teknelerdir. İlk olarak 60''lı 70''li yıllardaki konut sıkıntısının sonucu olarak ortaya çıkan tekne evler, bugünlerde yalnızca zorunluluktan değil, daha çok bir yaşam tarzı yeğlemesi olarak öne çıkmaktadır.

Ünlü Amsterdam sakinleri arasında Anne Frank, ressam Rembrandt van Rijn ve Vincent van Gogh adlı sanatçılar ve filozof Baruch Spinoza yer almaktadır. Kraliyet Concertgebouw Orkestrası da Amsterdam''da bulunur.', N'https://images3.alphacoders.com/951/951110.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (9, N'Rotterdam''da Vapur Seyahati', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Rotterdam, Hollanda''nın Güneybatısında bulunur. Amsterdam''dan sonra nüfus olarak 2. büyük şehirdir, fakat Rotterdam''ın yüzölçümü daha büyüktür. Rotterdam, Avrupa''nın en büyük limanını bünyesinde barındırır. Dünyanın dört bir yanından getirilen kargoların kıtaya kuzeyden giriş noktasıdır. İsmini Rotte ırmağından almaktadır. Nüfusun (1 Ocak 2007''de: 584.046 kişi) yaklaşık yarısının Hollanda kökenli olmadığı bu şehirde, %7,8 oranında (45.457 kişi) kayda değer bir Türk nüfusu da yaşamaktadır. Avrupa İslam Üniversitesi de Rotterdam merkezli faaliyet sürdüren bir eğitim kurumudur. Rotterdam''ın ulusal sloganı: Sterker door Strijd, yani: Mücadele ederek, daha güçlü olmak.', N'https://images3.alphacoders.com/746/746694.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (11, N'Hollanda''ya Veda Ederken', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'Utrecht Birliği''ne bağlı Kuzey Hollanda eyaletleri (Güney Hollanda, Zeeland, Utrecht, Gelderland, Overijssel, Groningen ve Friesland) 26 Temmuz 1581''de İspanya kralı II. Felipe''den bağımsızlıklarını ilan ettiler. 1648''de imzalanan Vestfalya Antlaşması''nda Hollanda vilayetlerinin bağımsızlığı tanındı. Bu yaklaşık olarak, daha sonra kurulacak olan Hollanda''nın bulunduğu bölgeydi. Buna karşın, bu bölgenin güneyinde kalan bölgeler, Flanderler dahil olmak üzere, krallıkta kaldı; daha sonra bu bölgede Belçika bağımsızlık kazanmıştır. Bu tarihten sonra Kuzey Hollandalılar ve Güney Hollandalılar olmak üzere iki toplumdan bahsedilmeye başlandı.

Viyana Kongresi kuzey ve güneyi bağımsız bir ülke olan Hollanda Krallığı olarak kısa bir süre için birleştirdi. Ancak güney Hollandalılar (Felemenkliler) 1830''da bağımsızlıklarını Belçika adı altında ilan etmişlerdi bile. ("Belgica" eski bir Roma eyaletinin ismidir ve Rönesans döneminde bu ifade, kuzey de dahil, Hollanda''nın Latince ismi olarak kullanıldı.)

Hollanda I. Dünya Savaşı boyunca tarafsız kaldı. Ancak II. Dünya Savaşı''nda Alman işgaline uğradı. 10 Mayıs 1940 tarihinde Nazi Almanyası Belçika ve Hollanda''yı işgal etti. Ayrıca 1942 tarihinde Japonya Hollanda''nın bir sömürgesi olan Endonezya''yı işgal etti. Savaş bittikten sonra Endonezya bağımsızlığını ilan etti.', N'https://img.wallpapic.com/i1746-925-049/thumb/kinderdijk-yel-degirmenleri-degirmeni-ruzgar-turbini-duvar-kagidi.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (12, N'Bekle Bizi Prag!', CAST(N'2023-08-30T00:00:00.000' AS DateTime), N'Prag (Çekçe: Bu ses hakkındaPraha (yardım·bilgi); Çekçe telaffuz: [ˈpraɦa]), Çekya''nın başkenti ve en büyük şehri. Geçmişte Çekoslovakya''nın da başkentiydi. Orta Bohemya''da Vltava Nehri''nin üzerinde yer alır ve 1.2 milyon nüfusu vardır. İş dünyası istatistiklerine göre bu sayıya ek olarak 300.000 kişi de resmi kaydı olmaksızın Prag''da yaşamaktadır. Prag, geniş bir kitle tarafından dünyanın en güzel şehirlerinden biri olarak gösterilir. Prag "Altın Şehir", "Doksanların Sol Bankası", "Masal Şehri", "Şehirlerin Anası" ve "Avrupa''nın Kalbi" gibi isimlerle de anılır. Prag konumu gereği çevresindeki ülkeler ile merkezi bir konum oluşturur. Avrupa''daki en fazla iç kaleye sahip 3 şehirden birisidir. Bu şehrin gölgesi Franz Kafka olmuştur. Kafka için bile fazlasıyla turist çeken bir Orta Çağ şehridir. Prag Şehri 5 Nobel ödülüne sahiptir.
Prag''ın bir özelliği de II. Dünya Savaşı''nda pek zarar görmemiş olmasıdır. Bu sayede birçok tarihi ev ve mekanı barındırır. Bu yerler arasında Aziz Vitus Katedrali de yer alır. Turizm alanında son yıllarda çok fazla rağbet görmektedir.
1992''den beri Prag''ın tarihi merkezi, Birleşmiş Milletler Eğitim, Bilim ve Kültür Örgütü (UNESCO)''nun Dünya Mirasları listesinde yer almaktadır.', N'https://get.wallhere.com/photo/1920x1200-px-architecture-bridge-building-city-czech-evening-Prague-praha-republic-river-vltava-1782687.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimizdas] ON 

INSERT [dbo].[Hakkimizdas] ([ID], [FotoUrl], [Aciklama]) VALUES (1, N'https://pbs.twimg.com/media/E6gY4fbX0AQGR1c?format=jpg&name=900x900', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam scelerisque, eros sit amet porta placerat, nibh nunc aliquet urna, eget rutrum lectus mi vel est. Nullam dignissim id felis sed facilisis. Nulla placerat in purus sit amet dignissim. Nunc in luctus velit. Pellentesque at libero vitae enim ultrices varius. Sed pharetra eros lectus, porttitor laoreet augue malesuada vitae. Nullam fringilla, arcu vel suscipit varius, ex leo porttitor augue, ut venenatis lorem sapien iaculis magna. Donec tincidunt rhoncus accumsan. Donec vulputate pellentesque blandit. Maecenas accumsan ultrices finibus.

Nulla ultrices neque at dolor mollis, quis aliquet nunc dignissim. Nulla iaculis dictum iaculis. Mauris venenatis mattis magna quis cursus. Morbi sagittis nulla a ex convallis, vel posuere libero commodo. Proin eleifend quis dolor et tincidunt. Vivamus quis est lorem. Donec quis ligula ultrices, mollis risus a, rutrum est. Nulla feugiat nec eros ac efficitur. Aliquam dictum suscipit laoreet. Sed tincidunt viverra turpis, a lobortis mi volutpat ac. Quisque convallis, felis nec commodo auctor, elit quam rutrum magna, at varius justo magna nec enim. Nam sed congue ligula. Nullam ipsum neque, condimentum ut dui vel, facilisis convallis neque. Vivamus posuere imperdiet sodales. Cras vulputate erat dolor, eget eleifend diam mollis sed.

Suspendisse porta ullamcorper dignissim. Nam vitae enim in tortor vestibulum facilisis ac eu orci. Mauris vitae nulla dignissim, dapibus erat vel, porttitor lacus. Sed ac faucibus quam, eget dapibus odio. Donec elementum pellentesque urna luctus consectetur. Donec dolor tortor, aliquam vel lacus id, laoreet consectetur risus. Suspendisse eleifend lacus bibendum velit venenatis sollicitudin. Nunc tincidunt lobortis accumsan. Etiam fermentum eget justo sit amet porta. Vestibulum eu nunc tristique, accumsan orci vel, cursus velit. Fusce aliquet ullamcorper ante, eget finibus dui faucibus ut.

Suspendisse sit amet accumsan lacus. Sed magna dolor, pellentesque ut neque nec, consequat faucibus arcu. Cras ornare convallis efficitur. Vestibulum ac purus posuere nisi mollis tincidunt. Phasellus aliquam bibendum leo ac tempor. Sed condimentum ante nec sem molestie, sit amet aliquet neque congue. Maecenas id consequat turpis. Sed at massa suscipit, ullamcorper dolor vel, scelerisque est. Aliquam purus orci, vulputate nec ligula ac, dictum tempor velit.

Etiam molestie, lectus tempor tempus porttitor, sem leo consequat odio, et viverra quam elit eu lectus. Nam tincidunt diam non sollicitudin convallis. Nullam dolor neque, efficitur sed arcu vitae, commodo bibendum felis. Maecenas iaculis metus eget urna consectetur, at tristique erat commodo. Cras laoreet turpis vitae vulputate pulvinar. Cras scelerisque vel leo non molestie. Nunc est justo, sollicitudin id metus a, tempus tempor ex. Donec lobortis lectus eget sem blandit molestie. Etiam urna quam, commodo eu placerat sit amet, ornare lobortis quam.')
SET IDENTITY_INSERT [dbo].[Hakkimizdas] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (1, N'Zeynep Çelik', N'zeynep@gmail.com', N'Geçen sene gitmişitik , çok güzel bir şehir', 2)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (2, N'Ali Demir', N'alidemir@gmail.com', N'Lyon''a giderseniz mutlaka futbol macçı izleyin', 3)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (3, N'Hasan', N'deneme@gmail.com', N'Lyon''a bir tğrlü gidemedim önümğzdeki yaz Fransa ziyaretim var mutlaka gitmek isterim', 3)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (4, N'Eylül', N'eylul@gmail.com', N'Harika!', 4)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (5, N'emel', N'emel@gmail.com', N'Çok güzel bir yazı', 5)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (6, N'Kemal', N'kemal@gmail.com', N'Hollanda gittiğim en güzel yerdi.', 11)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (13, N'Fatıma', N'fatima@gmail.com', N'Muazzam görünüyor', 12)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
