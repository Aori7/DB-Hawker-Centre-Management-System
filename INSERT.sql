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
