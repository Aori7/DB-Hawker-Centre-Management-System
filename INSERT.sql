-- Hawker Centre Management System DB Assignment
-- INSERT Sql
-- Group 4
-- created by Ada

-- INSERTING records/tuples into each table

/*
INSERT in order of following tables:
	operator
	nea_officer
	stallowner
	customer
	hawkercentre
	foodstall
	inspection
	inspectionremark
	promotion
	rentalagreement
	cuisine
	menuitem
	menuitemcuisine
	custorder
	orderitem
	likes
	feedback
	complaint
*/

-- DML
/*
Format:
 INSERT [INTO] table_name [(column_list)] 
  VALUES 
  ( { DEFAULT | NULL | expression } [ ,...n] ); 
*/

insert into Operator VALUES
('OID0001', 'National Environmental Agency (NEA)', 'Ang Jun De'),
('OID0002', 'Timbre+ Hawkers Pte Ltd', 'Kwa Xuan Ming'),
('OID0003', 'Fairprice Group Hawker Centre Pte Ltd', 'Tang Jia Hui'),
('OID0004', 'JW 50 Hawker Heritage Pte Ltd', 'Law Yong Rui'),
('OID0005', 'Fei Song Social Enterprise Pte Ltd', 'Lu Ling Hui');

insert into NEA_Officer VALUES
('NEA001','Lee Jing An','94766816'),
('NEA002','Ding Wei Le', '97118423'),
('NEA003', 'Leung Kai Feng', '84627156'),
('NEA004', 'Choo Jia Hui', '82079361'),
('NEA005', 'Bay Zi Rui', '69186533'),
('NEA006', 'Phoon Kok Soon', '84393909'),
('NEA007', 'Cheng Wen Kai', '96813094'),
('NEA008', 'Tee Jia Yi', '61145611'),
('NEA009', 'Lu Jia Hui ', '68533928'),
('NEA010', 'Oon Yi Min', '88394890');

insert into StallOwner VALUES
('Owner0001','Jeanette Aw', 'S8647974I'),
('Owner0002','Vivian Balakrishnan','S8563528H'),
('Owner0003','Daniel Bennett', 'S8457382I'),
('Owner0004','Chan Sek Keong','S7664318M'),
('Owner0005','Archbishop Nicholas Chia','S9346937L'),
('Owner0006','Felicia Chin','T0064739J'),
('Owner0007','Michelle Chong','S6865389P'),
('Owner0008','S Dhanabalan','T0053868N'),
('Owner0009','Joanna Dong','S7865228H'),
('Owner0010','Clement Everitt','S7100097G');

insert into Customer VALUES
('Cust0001', 'T0065789I','Keith Goh', '98723674', 'gohkeith@gmail.com'),
('Cust0002', 'T0276777G','Rohan Gunaratna','68973927','rgunaratna@gmail.com'),
('Cust0003', 'S9876553G','Mavis Hee', '87635193', NULL),
('Cust0004', 'S9561222L', 'Ivan Heng','98753824', 'ivannh@gmail.com'),
('Cust0005', 'S8683772M','Heng Swee Keat','6813964','hskeat@gmail.com'),
('Cust0006', 'T0679234I','Christian Ho','98542783',NULL),
('Cust0007', 'T0878341N','Hoi Kim Heng','87635172','hoikimheng@gmail.com'),
('Cust0008', 'S8423425P','Hon Sui Sen','68543217','suisen@gmail.com'),
('Cust0009', 'S9112348A','Indranee Rajah', '89753106','rajahin@gmail.com'),
('Cust0010', 'S7652498E','Jiang Yanmei', '67913652','yanmeii@gmail.com');

insert into HawkerCentre VALUES
('HC0001', 'Maxwell Food Centre', '1 Kadayanallur Street 069184', 'OID0001'),
('HC0002', 'Chinatown Complex Market & Food Centre', '335 Smith Street 050335', 'OID0002'),
('HC0003', 'Tiong Bahru Market', '30 Seng Poh Road 168898', 'OID0001'),
('HC0004', 'Old Airport Road Food Centre', '51 Old Airport Road 390051', 'OID0004'),
('HC0005', 'Tekka Centre', '665 Buffalo Road 210665', 'OID0001'),
('HC0006', 'Amoy Street Food Centre', '7 Maxwell Road 069111', 'OID0004'),
('HC0007', 'Lau Pa Sat', '18 Raffles Quay 048582', 'OID0005'),
('HC0008', 'Golden Mile Food Centre', '505 Beach Road 199583', 'OID0002'),
('HC0009', 'Changi Village Hawker Centre', '2 Changi Village Road 500002', 'OID0005'),
('HC0010', 'Bedok Interchange Hawker Centre', '216 Bedok North Street 1 460216', 'OID0003'),
('HC0011', 'Bukit Timah Market', '51 Upper Bukit Timah Road 588172', 'OID0003'),
('HC0012', 'Geylang Serai Market', '1 Geylang Serai 402001', 'OID0001'),
('HC0013', 'Hong Lim Market & Food Centre', '531A Upper Cross Street 051531', 'OID0001'),
('HC0014', 'Yishun Park Hawker Centre', '51 Yishun Ring Road 768681', 'OID0005'),
('HC0015', 'One Punggol Hawker Centre', '1 Punggol Drive 828629', 'OID0002');

insert into FoodStall VALUES
('F0001','A01','Ayam Penyet Ria','Delicious Ayam Penyet','HC0001'),
('F0002','A02','Ah Tai Chicken Rice','Michelin Bib Gourmand stall','HC0001'),
('F0003','B01','Liao Fan Hawker Chan','Soya sauce chicken rice','HC0002'),
('F0004','B02','Zhong Guo La Mian','Handmade Chinese noodles','HC0002'),
('F0005','C01','Jian Bo Shui Kueh','Steamed rice cake','HC0003'),
('F0006','C02','Lee Hong Kee Cantonese Roasted',NULL,'HC0003'),
('FS007','D01','Nam Sing Hokkien Fried Mee','Charcoal fried hokkien mee','HC0004'),
('FS008','E02','Sri Madura Veeran','South Indian vegetarian food','HC0005'),
('FS009','F01','A Noodle Story','Singapore-style ramen','HC0006'),
('FS010','G01','Satay Street','Grilled satay skewers','HC0007'),
('FS011','H01','Hainanese Curry Rice','Pork chop curry rice','HC0008'),
('FS012','I02','Mizzy Corner','Western food','HC0009'),
('FS013','J02','Sin Kee Famous Chicken Rice',NULL,'HC0010'),
('FS014','K02','Che Ah Coffee Shop','Local kopi stall','HC0011'),
('FS015','L02','Hajah Maimunah','Traditional Malay dishes','HC0012'),
('FS016','M03','Tian Tian Dessert House','Traditional desserts','HC0013'),
('FS017','N03','Uncle Penyet','Indonesian ayam penyet','HC0014'),
('FS018','P04','Laksa Express','Spicy laksa bowls','HC0015'),
('FS019','P05','Kopi Kiosk','Coffee & toast','HC0015');