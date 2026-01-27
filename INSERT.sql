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

-- Done by Ada
insert into Operator VALUES
('OP-001', 'National Environmental Agency (NEA)', 'Ang Jun De'),
('OP-002', 'Timbre+ Hawkers Pte Ltd', 'Kwa Xuan Ming'),
('OP-003', 'Fairprice Group Hawker Centre Pte Ltd', 'Tang Jia Hui'),
('OP-004', 'JW 50 Hawker Heritage Pte Ltd', 'Law Yong Rui'),
('OP-005', 'Fei Song Social Enterprise Pte Ltd', 'Lu Ling Hui');

-- Done by Ada
insert into NEA_Officer VALUES
('NEA-01','Lee Jing An','94766816'),
('NEA-02','Ding Wei Le', '97118423'),
('NEA-03', 'Leung Kai Feng', '84627156'),
('NEA-04', 'Choo Jia Hui', '82079361'),
('NEA-05', 'Bay Zi Rui', '69186533'),
('NEA-06', 'Phoon Kok Soon', '84393909'),
('NEA-07', 'Cheng Wen Kai', '96813094'),
('NEA-08', 'Tee Jia Yi', '61145611'),
('NEA-09', 'Lu Jia Hui ', '68533928'),
('NEA-10', 'Oon Yi Min', '88394890');

-- Done by Ada
insert into StallOwner VALUES
('OWN-001','Jeanette Aw', 'S8647974I', '98624618'),
('OWN-002','Vivian Balakrishnan','S8563528H','86534183'),
('OWN-003','Daniel Bennett', 'S8457382I','98998462'),
('OWN-004','Chan Sek Keong','S7664318M','67782641'),
('OWN-005','Archbishop Nicholas Chia','S9346937L','90804183'),
('OWN-006','Felicia Chin','T0064739J','98843614'),
('OWN-007','Michelle Chong','S6865389P','65513422'),
('OWN-008','S Dhanabalan','T0053868N','97712232'),
('OWN-009','Joanna Dong','S7865228H','98888333'),
('OWN-010','Clement Everitt','S7100097G','91111200'),
('OWN-011','Tan Wei Ming','S8234567A','91234567'),
('OWN-012','Lim Pei Xuan','S8345678B','92345678'),
('OWN-013','Muhammad Firdaus','S8456789C','93456789'),
('OWN-014','Nur Aisyah','S8567890D','94567890'),
('OWN-015','Koh Jun Jie','S8678901E','95678901'),
('OWN-016','Ng Yi Ling','S8789012F','96789012'),
('OWN-017','Arun Kumar','S8890123G','97890123'),
('OWN-018','Siti Aminah','S8901234H','98901234'),
('OWN-019','Jason Tan','S9012345I','90012345');

-- Done by Ada
insert into Customer VALUES
('CUST-001', 'T0065789I','Keith Goh', '98723674', 'gohkeith@gmail.com'),
('CUST-002', 'T0276777G','Rohan Gunaratna','68973927','rgunaratna@gmail.com'),
('CUST-003', 'S9876553G','Mavis Hee', '87635193', NULL),
('CUST-004', 'S9561222L', 'Ivan Heng','98753824', 'ivannh@gmail.com'),
('CUST-005', 'S8683772M','Heng Swee Keat','6813964','hskeat@gmail.com'),
('CUST-006', 'T0679234I','Christian Ho','98542783',NULL),
('CUST-007', 'T0878341N','Hoi Kim Heng','87635172','hoikimheng@gmail.com'),
('CUST-008', 'S8423425P','Hon Sui Sen','68543217','suisen@gmail.com'),
('CUST-009', 'S9112348A','Indranee Rajah', '89753106','rajahin@gmail.com'),
('CUST-010', 'S7652498E','Jiang Yanmei', '67913652','yanmeii@gmail.com');

-- Done by Ada
insert into HawkerCentre VALUES
('HC-001', 'Maxwell Food Centre', '1 Kadayanallur Street 069184', 'OP-001'),
('HC-002', 'Chinatown Complex Market & Food Centre', '335 Smith Street 050335', 'OP-002'),
('HC-003', 'Tiong Bahru Market', '30 Seng Poh Road 168898', 'OP-001'),
('HC-004', 'Old Airport Road Food Centre', '51 Old Airport Road 390051', 'OP-004'),
('HC-005', 'Tekka Centre', '665 Buffalo Road 210665', 'OP-001'),
('HC-006', 'Amoy Street Food Centre', '7 Maxwell Road 069111', 'OP-004'),
('HC-007', 'Lau Pa Sat', '18 Raffles Quay 048582', 'OP-005'),
('HC-008', 'Golden Mile Food Centre', '505 Beach Road 199583', 'OP-002'),
('HC-009', 'Changi Village Hawker Centre', '2 Changi Village Road 500002', 'OP-005'),
('HC-010', 'Bedok Interchange Hawker Centre', '216 Bedok North Street 1 460216', 'OP-003'),
('HC-011', 'Bukit Timah Market', '51 Upper Bukit Timah Road 588172', 'OP-003'),
('HC-012', 'Geylang Serai Market', '1 Geylang Serai 402001', 'OP-001'),
('HC-013', 'Hong Lim Market & Food Centre', '531A Upper Cross Street 051531', 'OP-001'),
('HC-014', 'Yishun Park Hawker Centre', '51 Yishun Ring Road 768681', 'OP-005'),
('HC-015', 'One Punggol Hawker Centre', '1 Punggol Drive 828629', 'OP-002');

-- Done by Ada
insert into FoodStall VALUES
('FS-01','A01','Ayam Penyet Ria','Delicious Ayam Penyet','HC-001'),
('FS-02','A02','Ah Tai Chicken Rice','Michelin Bib Gourmand stall','HC-001'),
('FS-03','B01','Liao Fan Hawker Chan','Soya sauce chicken rice','HC-002'),
('FS-04','B02','Zhong Guo La Mian','Handmade Chinese noodles','HC-002'),
('FS-05','C01','Jian Bo Shui Kueh','Steamed rice cake','HC-003'),
('FS-06','C02','Lee Hong Kee Cantonese Roasted',NULL,'HC-003'),
('FS-07','D01','Nam Sing Hokkien Fried Mee','Charcoal fried hokkien mee','HC-004'),
('FS-08','E02','Sri Madura Veeran','South Indian vegetarian food','HC-005'),
('FS-09','F01','A Noodle Story','Singapore-style ramen','HC-006'),
('FS-10','G01','Satay Street','Grilled satay skewers','HC-007'),
('FS-11','H01','Hainanese Curry Rice','Pork chop curry rice','HC-008'),
('FS-12','I02','Mizzy Corner','Western food','HC-009'),
('FS-13','J02','Sin Kee Famous Chicken Rice',NULL,'HC-010'),
('FS-14','K02','Che Ah Coffee Shop','Local kopi stall','HC-011'),
('FS-15','L02','Hajah Maimunah','Traditional Malay dishes','HC-012'),
('FS-16','M03','Tian Tian Dessert House','Traditional desserts','HC-013'),
('FS-17','N03','Uncle Penyet','Indonesian ayam penyet','HC-014'),
('FS-18','P04','Laksa Express','Spicy laksa bowls','HC-015'),
('FS-19','P05','Kopi Kiosk','Coffee & toast','HC-015');

-- Done by Ada
insert into Inspection VALUES
('IN-001','2021-03-15','A','2026-03-15','NEA-01','FS-01'),
('IN-002','2021-06-20','B','2026-06-20','NEA-02','FS-02'),
('IN-003','2022-01-10','A','2027-01-10','NEA-03','FS-03'),
('IN-004','2022-04-05','C','2027-04-05','NEA-04','FS-04'),
('IN-005','2022-09-18','B','2027-09-18','NEA-05','FS-05'),
('IN-006','2023-02-12','A','2028-02-12','NEA-06','FS-06'),
('IN-007','2023-05-30','D','2028-05-30','NEA-07','FS-07'),
('IN-008','2023-07-14','B','2028-07-14','NEA-08','FS-08'),
('IN-009','2023-10-09','A','2028-10-09','NEA-09','FS-09'),
('IN-010','2024-01-22','B','2029-01-22','NEA-10','FS-10'),
('IN-011','2024-03-17','A','2029-03-17','NEA-01','FS-11'),
('IN-012','2024-05-06','C','2029-05-06','NEA-02','FS-12'),
('IN-013','2024-07-19','B','2029-07-19','NEA-03','FS-13'),
('IN-014','2024-09-01','A','2029-09-01','NEA-04','FS-14'),
('IN-015','2024-11-11','B','2029-11-11','NEA-05','FS-15'),
('IN-016','2025-01-08','A','2030-01-08','NEA-06','FS-16'),
('IN-017','2025-02-16','C','2030-02-16','NEA-07','FS-17'),
('IN-018','2025-03-03','B','2030-03-03','NEA-08','FS-18'),
('IN-019','2025-03-21','A','2030-03-21','NEA-09','FS-19');

-- Done by Ada
insert into InspectionRemark VALUES
('IN-017','Waste bins uncovered and overflowing'),
('IN-007','Serious cleanliness issues found in washing area'),
('IN-016','Excellent stall maintenance and hygiene'),
('IN-019','stall meets minimum hygiene requirements'),
('IN-002','Improvement needed in waste disposal practices'),
('IN-002','Minor oil stains found near cooking area'),
('IN-007','Found insects in the kitchen'),
('IN-012','Grease buildup found on exhaust hood. needs to be cleaned'),
('IN-014','staff trained in proper food handling procedures. good job'),
('IN-015','Immediate cleaning action required.');

-- Done by Ada
insert into Promotion VALUES
('PROMO-001', '10% off Ayam Penyet Set', '2024-01-10', '2024-02-10', 'FS-01'),
('PROMO-002', 'Free drink with chicken rice', '2024-02-01', '2024-02-28', 'FS-02'),
('PROMO-003', 'CNY Special Combo', '2024-02-05', '2024-02-20', 'FS-03'),
('PROMO-004', 'Noodle Festival Deal', '2024-03-01', '2024-03-31', 'FS-04'),
('PROMO-005', 'breakfast Discount', '2024-03-15', '2024-04-15', 'FS-05'),
('PROMO-006', 'Ramadan Promotion', '2024-06-10', '2024-07-10', 'FS-15'),
('PROMO-007', 'Lunch Hour Promo', '2024-04-01', '2024-04-30', 'FS-09'),
('PROMO-008', 'Hari Raya Special', '2024-07-08', '2024-07-22', 'FS-17'),
('PROMO-009', 'weekend Satay Deal', '2024-05-01', '2024-05-31', 'FS-10'),
('PROMO-010', 'student discount', '2024-08-01', '2024-08-31', 'FS-15'),
('PROMO-011', 'dessert buy 2 get 1 free!', '2024-06-30', '2024-07-29', 'FS-16');


-- Done by Rui Min
insert into RentalAgreement VALUES
('AGR-001','2024-01-01','2025-01-02','Agreement outlining the rental terms for a food stall within a hawker centre.','OWN-001','FS-01'),
('AGR-002','2024-02-03','2025-02-02','Agreement outlining the rental terms for a food stall within a hawker centre.','OWN-002','FS-02'),
('AGR-003','2024-01-25','2025-01-24','Agreement outlining the rental terms for a food stall within a hawker centre.','OWN-003','FS-03'),
('AGR-004','2024-01-21','2025-01-20','Agreement outlining the rental terms for a food stall within a hawker centre.','OWN-004','FS-04'),
('AGR-005','2024-02-10','2025-02-09','Agreement outlining the rental terms for a food stall within a hawker centre.','OWN-005','FS-05'),
('AGR-006','2024-02-15','2025-02-14','Defines the conditions, rental period, and obligations for leasing a hawker stall','OWN-006','FS-06'),
('AGR-007','2024-03-02','2025-03-01','Defines the conditions, rental period, and obligations for leasing a hawker stall','OWN-007','FS-07'),
('AGR-008','2024-02-25','2025-02-24','Defines the conditions, rental period, and obligations for leasing a hawker stall','OWN-008','FS-08'),
('AGR-009','2024-03-17','2025-03-16','Rental agreement governing the use of a food stall at a designated hawker centre','OWN-009','FS-09'),
('AGR-010','2024-03-19','2025-03-18','Rental agreement governing the use of a food stall at a designated hawker centre','OWN-010','FS-10'),
('AGR-011','2024-03-29','2025-03-28','Rental agreement governing the use of a food stall at a designated hawker centre','OWN-011','FS-11'),
('AGR-012','2024-04-03','2025-04-02','Rental agreement governing the use of a food stall at a designated hawker centre','OWN-012','FS-12'),
('AGR-013','2024-04-14','2025-04-13','Specifies rental fees, lease duration, and rules for operating a food stall','OWN-013','FS-13'),
('AGR-014','2024-04-17','2025-04-16','Specifies rental fees, lease duration, and rules for operating a food stall','OWN-014','FS-14'),
('AGR-015','2024-05-25','2025-05-24','Agreement between the operator and vendor for stall rental within the hawker centre','OWN-015','FS-15'),
('AGR-016','2024-06-04','2025-06-03','Sets out the terms for leasing and using a hawker food stall','OWN-016','FS-16'),
('AGR-017','2024-06-24','2025-06-23','Sets out the terms for leasing and using a hawker food stall','OWN-017','FS-17'),
('AGR-018','2024-06-30','2025-06-29','Sets out the terms for leasing and using a hawker food stall','OWN-018','FS-18'),
('AGR-019','2024-07-13','2025-07-12','Rental contract detailing stall usage, payments, and compliance requirements','OWN-019','FS-19'),
/* CURRENT (active in 2026)*/
('AGR-020','2025-01-08','2026-01-07','Defines the rights and responsibilities of vendors renting a food stall.','OWN-001','FS-01'),
('AGR-021','2025-01-15','2026-01-14','Defines the rights and responsibilities of vendors renting a food stall.','OWN-002','FS-02'),
('AGR-022','2025-01-22','2026-01-21','Defines the rights and responsibilities of vendors renting a food stall.','OWN-003','FS-03'),
('AGR-023','2025-01-21','2026-01-20','Defines the rights and responsibilities of vendors renting a food stall.','OWN-004','FS-04'),
('AGR-024','2025-01-28','2026-01-27','Defines the rights and responsibilities of vendors renting a food stall.','OWN-005','FS-05'),
('AGR-025','2025-02-15','2026-02-14','Agreement covering stall rental conditions and operational requirements','OWN-006','FS-06'),
('AGR-026','2025-02-25','2026-02-24','Agreement covering stall rental conditions and operational requirements','OWN-007','FS-07'),
('AGR-027','2025-03-03','2026-03-02','Agreement covering stall rental conditions and operational requirements','OWN-008','FS-08'),
('AGR-028','2025-03-17','2026-03-16','Outlines rental obligations for vendors operating food stalls in the hawker centre','OWN-009','FS-09'),
('AGR-029','2025-03-21','2026-03-20','Outlines rental obligations for vendors operating food stalls in the hawker centre','OWN-010','FS-10'),
('AGR-030','2025-03-29','2026-03-28','Outlines rental obligations for vendors operating food stalls in the hawker centre','OWN-011','FS-11'),
('AGR-031','2025-04-02','2026-04-01','Outlines rental obligations for vendors operating food stalls in the hawker centre','OWN-012','FS-12'),
('AGR-032','2025-04-14','2026-04-13','Agreement between the operator and vendor for stall rental within the hawker centre','OWN-013','FS-13'),
('AGR-033','2025-04-17','2026-04-16','Agreement between the operator and vendor for stall rental within the hawker centre','OWN-014','FS-14'),
('AGR-034','2025-05-25','2026-05-24','Agreement between the operator and vendor for stall rental within the hawker centre','OWN-015','FS-15'),
('AGR-035','2025-06-04','2026-06-03','Sets out the terms for leasing and using a hawker food stall','OWN-016','FS-16'),
('AGR-036','2025-06-24','2026-06-23','Sets out the terms for leasing and using a hawker food stall','OWN-017','FS-17'),
('AGR-037','2025-06-30','2026-06-29','Sets out the terms for leasing and using a hawker food stall','OWN-018','FS-18'),
('AGR-038','2025-07-13','2026-07-12','Defines the rights and responsibilities of vendors renting a food stall','OWN-019','FS-19');

-- Done by Rui Min
insert into Cuisine VALUES
('C001', 'Japanese'),
('C002', 'Vegetarian'),
('C003', 'Malay'),
('C004', 'Chinese'),
('C005', 'Indonesian'),
('C006', 'Western'),
('C007', 'Indian'),
('C008', 'Italian'),
('C009', 'French'),
('C010', 'Mexican'),
('C011', 'Vietnamese'),
('C012', 'Thai'),
('C013', 'Middle Eastern'),
('C014', 'Peranakan'),
('C015', 'Seafood'),
('C016', 'Korean (halal)'),
('C017', 'Korean (non-halal)'),
('C018', 'Fusion (halal)'),
('C019', 'Fusion (non-halal)'),
('C020', 'Arab');

-- Done by Dayana
insert into MenuItem Values
-- FS-01 Ayam Penyet Ria
('FS-01','ITEM-01','Chicken marinated in sweet soy sauce and spices, flame-grilled',11.50,'Main'),
('FS-01','ITEM-02','Deep-fried chicken smashed with crispy crumbs, tofu, tempeh and sambal',12.50,'Main'),
('FS-01','ITEM-03','Fried prawns with rice and sambal',10.50,'Main'),
-- FS-02 Ah Tai Chicken Rice
('FS-02','ITEM-04','Poached chicken served with fragrant rice, chilli and dark soy sauce',6.50,'Main'),
('FS-02','ITEM-05','Roasted chicken served with seasoned chicken rice',6.00,'Main'),
-- FS-03 Liao Fan Hawker Chan
('FS-03','ITEM-06','Stir-fried seasonal greens',7.00,'Side'),
('FS-03','ITEM-07','Half portion of signature soy-sauce chicken',21.00,'Add-On'),
-- FS-04 Zhong Guo La Mian
('FS-04','ITEM-08','Hand-pulled noodles with beef broth',7.00,'Main'),
('FS-04','ITEM-09','Hot Chinese tea',1.50,'Drink'),
('FS-04','ITEM-10','Canned beverage',2.00,'Drink'),
-- FS-05 Jian Bo Shui Kueh
('FS-05','ITEM-11','Rice cakes with chai poh and chilli',4.00,'Main'),
('FS-05','ITEM-12','Additional preserved radish topping',1.00,'Add-On'),
-- FS-06 Lee Hong Kee Roasted
('FS-06','ITEM-13','Roasted duck served with noodles',6.50,'Main'),
('FS-06','ITEM-14','Steamed white rice',1.00,'Side'),
-- FS-07 Nam Sing Hokkien Mee
('FS-07','ITEM-15','Fried noodles with prawns and egg',5.00,'Main'),
('FS-07','ITEM-16','Additional prawns topping',2.00,'Add-On'),
-- FS-08 Sri Madura Veeran (Indian)
('FS-08','ITEM-17','Spiced basmati rice with chicken',6.00,'Main'),
('FS-08','ITEM-18','Spicy chicken curry',4.00,'Main'),
('FS-08','ITEM-19','Dry spiced chicken',5.10,'Main'),
('FS-08','ITEM-20','Pulled milk tea',1.50,'Drink'),
-- FS-09 A Noodle Story
('FS-09','ITEM-21','Soft noodles in soy-based broth with pork slices',10.00,'Main'),
('FS-09','ITEM-22','Chicken noodles in light broth',9.50,'Main'),
-- FS-10 Satay Street
('FS-10','ITEM-23','Grilled marinated chicken skewers',6.00,'Main'),
('FS-10','ITEM-24','Grilled marinated beef skewers',7.00,'Main'),
-- FS-11 Hainanese Curry Rice
('FS-11','ITEM-25','Rice with crispy pork chop and curry gravy',4.50,'Main'),
-- FS-12 Mizzy Corner (Western)
('FS-12','ITEM-26','Grilled chicken chop with black pepper sauce',8.50,'Main'),
('FS-12','ITEM-27','Fish and chips with tartar sauce',9.00,'Main'),
-- FS-13 Sin Kee Chicken Rice
('FS-13','ITEM-28','Soy-braised egg',1.00,'Side'),
('FS-13','ITEM-29','Chicken innards side dish',4.30,'Side'),
-- FS-14 Che Ah Coffee Shop
('FS-14','ITEM-30','Black local coffee (kopi-o)',1.60,'Drink'),
('FS-14','ITEM-31','Local milk tea (teh)',2.20,'Drink'),
-- FS-15 Hajah Maimunah (Malay)
('FS-15','ITEM-32','Slow-cooked braised beef in rich Malay spices',15.70,'Main'),
-- FS-16 Tian Tian Dessert House
('FS-16','ITEM-33','Chendol with gula melaka and coconut milk',3.50,'Dessert'),
('FS-16','ITEM-34','Ice kacang with red bean and jelly',4.00,'Dessert'),
-- FS-17 Uncle Penyet
('FS-17','ITEM-35','Crispy dory fish with rice and sambal',9.50,'Main'),
-- FS-18 Laksa Express
('FS-18','ITEM-36','Laksa noodles in spicy coconut broth with prawns and egg',9.50,'Main'),
-- FS-19 Kopi Kiosk
('FS-19','ITEM-37','Coffee with evaporated milk',2.80,'Drink'),
('FS-19','ITEM-38','Black tea (no milk)',2.10,'Drink');


-- Done by Ada
-- each menu item can have multiple cuisines
insert into MenuItemCuisine VALUES
-- FS-01 Ayam Penyet Ria (Indonesian, Malay), 3 items
('C005','FS-01','ITEM-01'),
('C003','FS-01','ITEM-01'),
('C005','FS-01','ITEM-02'),
('C003','FS-01','ITEM-02'),
('C005','FS-01','ITEM-03'),
('C003','FS-01','ITEM-03'),
-- FS-02 Ah Tai Chicken Rice (Chinese) , 2 items
('C004','FS-02','ITEM-04'),
('C004','FS-02','ITEM-05'),
-- FS-03 Liao Fan Hawker Chan (Chinese), 2 items
('C004','FS-03','ITEM-06'),
('C004','FS-03','ITEM-07'),
-- FS-04 Zhong Guo La Mian (Chinese), 3 items
('C004','FS-04','ITEM-08'),
('C004','FS-04','ITEM-09'),
('C004','FS-04','ITEM-10'),
-- FS-05 Jian Bo Shui Kueh (Chinese), 2items
('C004','FS-05','ITEM-11'),
('C004','FS-05','ITEM-12'),
-- FS-06 Lee Hong Kee Roasted (Chinese), 2 items
('C004','FS-06','ITEM-13'),
('C004','FS-06','ITEM-14'),
-- FS-07 Nam Sing Hokkien Mee (Chinese), 2 items
('C004','FS-07','ITEM-15'),
('C004','FS-07','ITEM-16'),
-- FS-08 Sri Madura Veeran (Indian) , 4 items all same cuisine
('C007','FS-08','ITEM-17'),
('C007','FS-08','ITEM-18'),
('C007','FS-08','ITEM-19'),
('C007','FS-08','ITEM-20'),
-- FS-09 A Noodle Story (Fusion non-halal, Japanese) 2 items
('C019','FS-09','ITEM-21'),
('C001','FS-09','ITEM-21'),
('C019','FS-09','ITEM-22'),
('C001','FS-09','ITEM-22'),
-- FS-10 Satay Street (Malay, Seafood) 2 items
('C003','FS-10','ITEM-23'),
('C015','FS-10','ITEM-23'),
('C003','FS-10','ITEM-24'),
('C015','FS-10','ITEM-24'),
-- FS-11 Hainanese Curry Rice (Chinese) 1 item
('C004','FS-11','ITEM-25'),
-- FS-12 Mizzy Corner (Western) 2 item
('C006','FS-12','ITEM-26'),
('C006','FS-12','ITEM-27'),
-- FS-13 Sin Kee Chicken Rice (Chinese) 2 items
('C004','FS-13','ITEM-28'),
('C004','FS-13','ITEM-29'),
-- FS-14 Che Ah Coffee Shop (Chinese) 2 items
('C004','FS-14','ITEM-30'),
('C004','FS-14','ITEM-31'),
-- FS-15 Hajah Maimunah (Malay) 1 item
('C003','FS-15','ITEM-32'),
-- FS-16 Tian Tian Dessert House (Malay, Peranakan, Fusion halal)  2 items
('C003','FS-16','ITEM-33'),
('C014','FS-16','ITEM-33'),
('C018','FS-16','ITEM-33'),
('C003','FS-16','ITEM-34'),
('C014','FS-16','ITEM-34'),
('C018','FS-16','ITEM-34'),
-- FS-17 Uncle Penyet (Indonesian, Malay) 1 item
('C005','FS-17','ITEM-35'),
('C003','FS-17','ITEM-35'),
-- FS-18 Laksa Express (Peranakan, Chinese) 1 item
('C014','FS-18','ITEM-36'),
('C004','FS-18','ITEM-36'),
-- FS-19 Kopi Kiosk (Chinese) 2 items
('C004','FS-19','ITEM-37'),
('C004','FS-19','ITEM-38');


-- Done by Ada
insert into CustOrder VALUES
('ORDER-001','2025-10-02','Cash'),
('ORDER-002','2025-10-05','Paynow'),
('ORDER-003','2025-10-08','Credit Card'),
('ORDER-004','2025-10-12','Cash'),
('ORDER-005','2025-10-15','Paynow'),
('ORDER-006','2025-10-18','Credit Card'),
('ORDER-007','2025-10-22','Cash'),
('ORDER-008','2025-10-25','Paynow'),
('ORDER-009','2025-10-28','Credit Card'),
('ORDER-010','2025-11-01','Cash'),
('ORDER-011','2025-11-03','Paynow'),
('ORDER-012','2025-11-06','Credit Card'),
('ORDER-013','2025-11-09','Cash'),
('ORDER-014','2025-11-12','Paynow'),
('ORDER-015','2025-11-15','Credit Card'),
('ORDER-016','2025-11-18','Cash'),
('ORDER-017','2025-11-21','Paynow'),
('ORDER-018','2025-11-24','Credit Card'),
('ORDER-019','2025-12-01','Cash'),
('ORDER-020','2025-12-04','Paynow'),
('ORDER-021','2025-12-07','Credit Card'),
('ORDER-022','2025-12-10','Cash'),
('ORDER-023','2025-12-13','Paynow'),
('ORDER-024','2025-12-16','Credit Card'),
('ORDER-025','2025-12-19','Cash'),
('ORDER-026','2026-01-03','Paynow'),
('ORDER-027','2026-01-06','Credit Card'),
('ORDER-028','2026-01-09','Cash'),
('ORDER-029','2026-01-12','Paynow'),
('ORDER-030','2026-01-15','Credit Card'),
('ORDER-031',DEFAULT,'Credit Card'),
('ORDER-032',DEFAULT,'Paynow'),
('ORDER-033',DEFAULT,'Paynow'),
('ORDER-034',DEFAULT,'Paynow'),
('ORDER-035',DEFAULT,'Cash'),
('ORDER-036',DEFAULT,'Cash'),
('ORDER-037',DEFAULT,'Cash'),
('ORDER-038',DEFAULT,'Cash'),
('ORDER-039',DEFAULT,'Credit Card'),
('ORDER-040',DEFAULT,'Credit Card');


-- Done by Ada




-- Done by Calista
insert into Feedback VALUES
('FBK-001','Food was tasty and well cooked','2024-01-15 12:30:00',5,'CUST-001','FS-03'),
('FBK-002','Service was fast and friendly','2024-01-18 18:45:00', 4,'CUST-010','FS-09'),
('FBK-003','Portion size could be bigger','2024-02-02 13:10:00', 3,'CUST-003','FS-08'),
('FBK-004','Very affordable and delicious','2024-02-15 12:00:00', 5,'CUST-009','FS-02'),
('FBK-005','Queue was too long during lunch','2024-02-15 19:55:00',3,'CUST-005','FS-01'),
('FBK-006','Taste was average','2024-03-10 11:30:00',3,'CUST-008','FS-10'),
('FBK-007','Too salty for my liking','2024-03-20 13:50:00',2,'CUST-003','FS-07'),
('FBK-008','Great value for money','2024-04-01 12:15:00',5,'CUST-001','FS-03'),
('FBK-009','Waiting time was reasonable','2024-05-05 18:30:00',4,'CUST-002','FS-06'),
('FBK-010','Food presentation was good','2024-05-10 19:10:00',4,'CUST-010','FS-04'),
('FBK-011','Not as good as expected','2024-05-15 14:45:00',3,'CUST-007','FS-05'),
('FBK-012','Excellent taste and quality','2024-06-01 13:25:00',5,'CUST-006','FS-11'),
('FBK-013','Would come back again','2024-06-08 18:55:00',5,'CUST-001', 'FS-13'),
('FBK-014','Food took too long to arrive','2024-06-10 12:40:00',1,'CUST-004','FS-12'),
('FBK-015','Good variety of options','2024-06-15 19:20:00',4,'CUST-010','FS-14'),
('FBK-016','Average experience overall','2024-07-20 13:00:00',3,'CUST-003','FS-15'),
('FBK-017','Highly recommended stall','2024-07-25 18:10:00',5,'CUST-002','FS-16'),
('FBK-018','Not worth the price','2024-08-15 11:05:00',2,'CUST-008','FS-18'),
('FBK-019','Really long waiting time','2024-08-28 21:00:00',1,'CUST-007','FS-19 '),
('FBK-020','It is so good, worth trying','2024-09-20 19:05:00',5,'CUST-002','FS-17'),
('FBK-021','Staff were very polite','2024-10-15 20:05:00',5,'CUST-009','FS-01');
