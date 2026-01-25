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
use HCManagementSystem;
GO

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

insert into Inspection VALUES
('IS0001','2021-03-15','A','2026-03-15','NEA001','F0001'),
('IS0002','2021-06-20','B','2026-06-20','NEA002','F0002'),
('IS0003','2022-01-10','A','2027-01-10','NEA003','F0003'),
('IS0004','2022-04-05','C','2027-04-05','NEA004','F0004'),
('IS0005','2022-09-18','B','2027-09-18','NEA005','F0005'),
('IS0006','2023-02-12','A','2028-02-12','NEA006','F0006'),
('IS0007','2023-05-30','D','2028-05-30','NEA007','FS007'),
('IS0008','2023-07-14','B','2028-07-14','NEA008','FS008'),
('IS0009','2023-10-09','A','2028-10-09','NEA009','FS009'),
('IS0010','2024-01-22','B','2029-01-22','NEA010','FS010'),
('IS0011','2024-03-17','A','2029-03-17','NEA001','FS011'),
('IS0012','2024-05-06','C','2029-05-06','NEA002','FS012'),
('IS0013','2024-07-19','B','2029-07-19','NEA003','FS013'),
('IS0014','2024-09-01','A','2029-09-01','NEA004','FS014'),
('IS0015','2024-11-11','B','2029-11-11','NEA005','FS015'),
('IS0016','2025-01-08','A','2030-01-08','NEA006','FS016'),
('IS0017','2025-02-16','C','2030-02-16','NEA007','FS017'),
('IS0018','2025-03-03','B','2030-03-03','NEA008','FS018'),
('IS0019','2025-03-21','A','2030-03-21','NEA009','FS019');

insert into InspectionRemark VALUES
('IS0017','Waste bins uncovered and overflowing'),
('IS0007','Serious cleanliness issues found in washing area'),
('IS0016','Excellent stall maintenance and hygiene'),
('IS0019','stall meets minimum hygiene requirements'),
('IS0002','Improvement needed in waste disposal practices'),
('IS0002','Minor oil stains found near cooking area'),
('IS0007','Found insects in the kitchen'),
('IS0012','Grease buildup found on exhaust hood. needs to be cleaned'),
('IS0014','staff trained in proper food handling procedures. good job'),
('IS0004','Immediate cleaning action required.');


insert into Promotion VALUES
('PROMO0001', '10% off Ayam Penyet Set', '2024-01-10', '2024-02-10', 'F0001'),
('PROMO0002', 'Free drink with chicken rice', '2024-02-01', '2024-02-28', 'F0002'),
('PROMO0003', 'CNY Special Combo', '2024-02-05', '2024-02-20', 'F0003'),
('PROMO0004', 'Noodle Festival Deal', '2024-03-01', '2024-03-31', 'F0004'),
('PROMO0005', 'breakfast Discount', '2024-03-15', '2024-04-15', 'F0005'),
('PROMO0006', 'Ramadan Promotion', '2024-03-10', '2024-04-10', 'FS015'),
('PROMO0007', 'Lunch Hour Promo', '2024-04-01', '2024-04-30', 'FS009'),
('PROMO0008', 'Hari Raya Special', '2024-04-08', '2024-04-22', 'FS017'),
('PROMO0009', 'weekend Satay Deal', '2024-05-01', '2024-05-31', 'FS010'),
('PROMO0010', 'student discount', '2024-05-01', '2024-05-31', 'FS015'),
('PROMO0011', 'dessert buy 2 get 1 free!', '2024-06-01', '2024-06-30', 'FS016');

-- temp line