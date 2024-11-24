DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `brand` WRITE;
INSERT INTO `brand` VALUES (1,'Gucci'),(2,'Hermes'),(3,'Christian Dior'),(4,'Louis Vuitton'),(5,'Chanel'),(6,'Balenciaga'),(7,'Prada'),(8,'Celine'),(9,'Burberry'),(10,'Fendi'),(11,'Calvin Klein');
UNLOCK TABLES;


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `category` WRITE;
INSERT INTO `category` VALUES (1,'Nam'),(2,'Nữ');
UNLOCK TABLES;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
LOCK TABLES `comment` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `contact` WRITE;
INSERT INTO `contact` VALUES (1,'Xuân Minh','Gọi cho tôi nhé','0937465586','2024-06-14 16:20:08.925000','pending'),(2,'Hai Minh','ABC','0123456789','2024-06-14 16:22:10.799000','processed'),(3,'Minh Hoa','Connect','0955335222','2024-04-14 00:00:00.000000','content'),(4,'Ngoc Tran','Interested in services','0933344555','2024-05-01 00:00:00.000000','pending'),(5,'Khai Nguyen','Need support','0922333444','2024-05-15 00:00:00.000000','resolved'),(6,'Thu Ha','Inquiry about products','0911222333','2024-06-01 00:00:00.000000','pending'),(7,'Duc Pham','Feedback','0944556677','2024-06-10 00:00:00.000000','closed'),(8,'Thanh Le','Request callback','0900111222','2024-06-15 00:00:00.000000','processed'),(9,'Minh Chau','Schedule a meeting','0977888999','2024-06-20 00:00:00.000000','scheduled'),(10,'Van Anh','Product inquiry','0988777666','2024-06-25 00:00:00.000000','open'),(11,'Hoang Lan','Billing issue','0966555444','2024-06-30 00:00:00.000000','resolved'),(12,'Duy Khang','Technical support','0933444555','2024-07-05 00:00:00.000000','pending'),(13,'Thao Nguyen','General inquiry','0911223445','2024-07-10 00:00:00.000000','closed'),(14,'Lan Pham','Interested in purchasing','0987654321','2024-06-10 00:00:00.000000','pending'),(15,'Minh Hoang','Feedback about the website','0976543210','2024-06-12 00:00:00.000000','resolved'),(16,'Hanh Le','Request for more information','0965432109','2024-06-14 00:00:00.000000','pending'),(17,'Quoc Vuong','Issue with recent order','0954321098','2024-06-16 00:00:00.000000','resolved'),(18,'My Dung','Interested in partnership','0943210987','2024-06-18 00:00:00.000000','pending');
UNLOCK TABLES;


DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number_of_products` int NOT NULL,
  `total_money` float NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FKinivj2k1370kw224lavkm3rqm` (`product_id`),
  CONSTRAINT `FKinivj2k1370kw224lavkm3rqm` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `order_details` WRITE;
INSERT INTO `order_details` VALUES (7,2,300,10,1),(8,1,2500,10,3),(9,2,300,11,1),(10,3,2500,11,3),(11,1,300,12,1),(12,1,2500,12,3);
UNLOCK TABLES;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'t.vinh2511203@gmail.com','Thanh','Vinh ','$2a$10$NatccRec0JUK.eUKGK3Le.SdyaeXkZ6UFl3pm0BTyfrUDKkP/3hae'),(2,'dxminh@gmail.com','Dao','Minh','$2a$10$QrhgjWUkY7xhlfX3r4qJue8kcl1SQctD5AEe7KC6OcBSd8aCYZaD.'),(3,'hoahienhau2003@gmail.com','Le','Hoa','conmeo2002&'),(4,'tuananhle2000@gmail.com','Nguyen','Tuan anh','addka@1212'),(5,'phongtran1999@gmail.com','Tran','Phong','password1234'),(6,'anhthu1998@gmail.com','Le','Anh Thu','thu@password'),(7,'bichngoc2001@gmail.com','Nguyen','Bich Ngoc','ngoc@2001'),(8,'minhhoang2002@gmail.com','Pham','Minh Hoang','hoang@2002'),(9,'duyvuong2000@gmail.com','Vu','Duy Vuong','duy@2000'),(10,'lannguyen1997@gmail.com','Nguyen Thi','Lan','lan@1997'),(11,'thanhnguyen1995@gmail.com','Nguyen','Thanh','thanh@1995'),(12,'kienpham1998@gmail.com','Pham','Kien','kien@1998'),(13,'trinhnguyen2001@gmail.com','Nguyen','Trinh','trinh@2001'),(14,'hoangminh2000@gmail.com','Le','Hoang Minh','hoang@2000'),(15,'ltmhoa2862003@gmail.com','Le','Hoa','$2a$10$fI0GqdkE0wfkXbLHoLQbVOsLQuWNkU4QrrPFzqOt3s3Asau8YGd5S');
UNLOCK TABLES;


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `phone_number` varchar(100) NOT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_money` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `orders` WRITE;
INSERT INTO `orders` VALUES (1,'nguyenlan2000@gmail.com','Lan','Nguyen','Vui lòng gọi trước khi giao hàng','2024-01-15 00:00:00.000000','credit_card','0900123456','Hà Nội','processing',1500,2),(2,'hoangminh1999@gmail.com','Minh','Hoang','Giao hàng sau 5h chiều','2024-01-18 00:00:00.000000','paypal','0900234567','TP Hồ Chí Minh','shipped',2000,3),(3,'phamthuy1998@gmail.com','Thuy','Pham','Liên hệ trước khi giao','2024-01-20 00:00:00.000000','cash_on_delivery','0900345678','Đà Nẵng','delivered',1800,4),(4,'trananh1997@gmail.com','Anh','Tran','Giao hàng trong giờ hành chính','2024-01-25 00:00:00.000000','credit_card','0900456789','Hải Phòng','processing',2200,5),(5,'nguyenhoa1996@gmail.com','Hoa','Nguyen','Không giao vào cuối tuần','2024-02-01 00:00:00.000000','paypal','0900567890','Nghệ An','shipped',2400,6),(6,'lethanh1995@gmail.com','Thanh','Le','Gọi trước khi đến','2024-02-03 00:00:00.000000','cash_on_delivery','0900678901','Quảng Ninh','delivered',2600,7),(7,'dinhhai1994@gmail.com','Hai','Dinh','Giao hàng vào buổi sáng','2024-02-07 00:00:00.000000','credit_card','0900789012','Bình Dương','processing',2300,8),(8,'phuonglinh1993@gmail.com','Linh','Phuong','Giao hàng trong tuần','2024-02-10 00:00:00.000000','paypal','0900890123','Cần Thơ','shipped',2500,9),(9,'ngocanh1992@gmail.com','Anh','Ngoc','Giao hàng trước 6h tối','2024-02-15 00:00:00.000000','cash_on_delivery','0900901234','Đắk Lắk','delivered',2700,10),(10,'t.vinh2511203@gmail.com','Thanh','Vinh','Giao hàng sớm nhé','2024-06-13 23:07:47.482000','paypal','0695433596','Bình Minh','processing',3100,1),(11,'dxminh@gmail.com','Xuan','Minh','Giao hàng cẩn thận nhé!','2024-06-13 23:29:23.800000','paypal','0456374333','Hà Nội','pending',8100,2),(12,'dxminh@gmail.com','Xuan','Minh','Giao hàng cẩn thận và nhanh nhé!','2024-06-13 23:32:03.680000','cash','0456374333','Hà Nội','processing',2800,2),(13,'hoahienhau2003@gmail.com','Le','Hoa','Giao hàng hãy thân thiện với khách hàng hơn!','2023-04-15 00:00:00.000000','paypal','0932683431','Hưng yên','pending',2330,3),(14,'tuananhle2000@gmail.com','Nguyen','Tuan Anh','Giao hàng đúng hẹn','2023-05-20 00:00:00.000000','credit_card','0912345678','Hà Nội','shipped',1500,4),(15,'phongtran1999@gmail.com','Tran','Phong','Xin gọi trước khi giao hàng','2023-06-10 00:00:00.000000','cash_on_delivery','0922333444','Hải Phòng','delivered',3200,5),(16,'anhthu1998@gmail.com','Le','Anh Thu','Vui lòng kiểm tra hàng trước khi giao','2023-07-05 00:00:00.000000','bank_transfer','0933445566','Đà Nẵng','processing',2750,6),(17,'bichngoc2001@gmail.com','Nguyen','Bich Ngoc','Không giao vào ngày lễ','2023-08-01 00:00:00.000000','paypal','0944556677','Cần Thơ','pending',1800,7),(18,'minhhoang2002@gmail.com','Pham','Minh Hoang','Chuyển phát nhanh','2023-09-15 00:00:00.000000','credit_card','0955667788','Bắc Ninh','shipped',4200,8),(19,'duyvuong2000@gmail.com','Vu','Duy Vuong','Giao hàng trước 5 giờ chiều','2023-10-05 00:00:00.000000','cash_on_delivery','0966778899','Thái Nguyên','delivered',2150,9),(20,'lannguyen1997@gmail.com','Nguyen','Lan','Liên hệ trước khi giao','2023-11-20 00:00:00.000000','bank_transfer','0977889900','Nam Định','processing',3100,10),(21,'thanhnguyen1995@gmail.com','Nguyen','Thanh','Chuyển khoản trước','2023-12-10 00:00:00.000000','paypal','0988990011','Thanh Hóa','pending',2850,11),(22,'kienpham1998@gmail.com','Pham','Kien','Đảm bảo chất lượng sản phẩm','2024-01-15 00:00:00.000000','credit_card','0999001122','Bình Dương','shipped',3350,12),(23,'trinhnguyen2001@gmail.com','Nguyen','Trinh','Giao hàng vào buổi sáng','2024-02-05 00:00:00.000000','cash_on_delivery','0900112233','Quảng Ninh','delivered',2500,13);
UNLOCK TABLES;

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(350) NOT NULL,
  `price` float DEFAULT NULL,
  `thumbnail` varchar(300) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `product` WRITE;
INSERT INTO `product` VALUES (1,NULL,NULL,'2024-06-13 14:30:28.302435','t.vinh2511203@gmail.com','Đây là sản phẩm dành cho nữ giới','Túi LV Passy Monogram Nâu',300,'http://res.cloudinary.com/dorl0yxpe/image/upload/v1717700650/941ee50d-c5d9-472d-94fb-d57ecddfe89d.jpg',4,2),(2,NULL,NULL,'2024-05-02 00:00:00.000000','hoahienhau2003@gmail.com','Đây là sản phẩm dành cho nam giới','Channel',4400,'http://res.cloudinary.com/dorl0yxpe/image/upload/v1717795969/4fbaafa6-949e-4698-b9f9-91beae0a2e3c.jpg',5,3),(3,NULL,NULL,'2024-06-13 14:30:00.981136','t.vinh2511203@gmail.com','Đây là sản phẩm của nhãn hàng LOUIS VUITTON','LOUIS VUITTON NỮ M67841',2500,'https://res.cloudinary.com/hoahien/image/upload/v1718521868/ia1zzoyig2c48p5gqufj.jpg',4,2),(7,NULL,NULL,'2024-05-06 00:00:00.000000','bichngoc2001@gmail.com','Túi sách dành cho nữ giới','Clinique',4900,'https://res.cloudinary.com/hoahien/image/upload/v1718521867/pxilys9uju9ucjcrs5ez.jpg',9,2),(8,NULL,NULL,'2024-05-07 00:00:00.000000','minhhoang2002@gmail.com','Túi xách thời trang, phù hợp cho mọi dịp','Neutrogena',3100,'https://res.cloudinary.com/hoahien/image/upload/v1718521194/fiyasonbvf3yteensjqp.jpg',10,3),(9,NULL,NULL,'2024-05-08 00:00:00.000000','duyvuong2000@gmail.com','Túi xách cao cấp, thiết kế sang trọng','MAC',2700,'https://res.cloudinary.com/hoahien/image/upload/v1718521194/ytnvfb0hpaxodhajas3m.jpg',11,4),(10,NULL,NULL,'2024-05-09 00:00:00.000000','lannguyen1997@gmail.com','Túi xách da bò, kiểu dáng cổ điển','Pantene',1900,'https://res.cloudinary.com/hoahien/image/upload/v1718521194/ujpsganksaakurhoxyor.jpg',12,1),(11,NULL,NULL,'2024-05-13 00:00:00.000000','quynhpham1996@gmail.com','Túi xách da bò, kiểu dáng cổ điển','Gucci',10200,'https://res.cloudinary.com/hoahien/image/upload/v1718521194/bry2bcj6i1wc4d7ehdad.jpg',16,5),(12,NULL,NULL,'2024-05-14 00:00:00.000000','thanhtran2000@gmail.com','Túi xách tay thời trang, phù hợp cho mọi dịp','Louis Vuitton',9500,'https://res.cloudinary.com/hoahien/image/upload/v1718520613/a2hzt3blu6p9on368yen.jpg',17,5),(13,NULL,NULL,'2024-05-03 00:00:00.000000','tuananhle2000@gmail.com','Túi xách thời trang, phù hợp cho mọi dịp','Gucci',6200,'https://res.cloudinary.com/hoahien/image/upload/v1718520613/o208szqc3sgnkyn6zcyz.jpg',6,5),(14,NULL,NULL,'2024-05-04 00:00:00.000000','phongtran1999@gmail.com','Túi xách cao cấp, thiết kế sang trọng','Louis Vuitton',7800,'https://res.cloudinary.com/hoahien/image/upload/v1718520613/bga8dtnpjygmvnlo62z0.jpg',7,5),(15,NULL,NULL,'2024-05-05 00:00:00.000000','anhthu1998@gmail.com','Túi xách phong cách, phù hợp cho công việc hàng ngày','Chanel',8300,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/ycnb0azo0bfrxwma2ob5.jpg',8,5),(16,NULL,NULL,'2024-05-06 00:00:00.000000','bichngoc2001@gmail.com','Túi xách nhỏ gọn, tiện lợi','Prada',4900,'https://res.cloudinary.com/hoahien/image/upload/v1718520613/li7raxe9hpqa9fr1rq3l.jpg',9,5),(17,NULL,NULL,'2024-05-07 00:00:00.000000','minhhoang2002@gmail.com','Túi xách tay thời trang, phù hợp cho tiệc tối','Hermes',12500,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/itqjomb5zycee8zfgggf.jpg',10,5),(18,NULL,NULL,'2024-05-08 00:00:00.000000','duyvuong2000@gmail.com','Túi xách đeo chéo tiện dụng, phong cách năng động','Coach',3100,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/qyabmpvhqzxvip7ttoa2.jpg',11,5),(19,NULL,NULL,'2024-05-09 00:00:00.000000','lannguyen1997@gmail.com','Túi xách da thật, bền bỉ và sang trọng','Balenciaga',9400,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/lbbr0lzbh2ibrlxaaqny.jpg',12,5),(20,NULL,NULL,'2024-05-10 00:00:00.000000','thanhnguyen1995@gmail.com','Túi xách vải bố, phong cách trẻ trung','Burberry',5300,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/r24yayijgci6lilrepqs.jpg',13,5),(21,NULL,NULL,'2024-05-11 00:00:00.000000','kienpham1998@gmail.com','Túi xách tay sang trọng, phù hợp cho buổi họp quan trọng','Fendi',8900,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/uzjviho3bhvjdvfeerfi.jpg',14,5),(22,NULL,NULL,'2024-05-12 00:00:00.000000','trinhnguyen2001@gmail.com','Túi xách đa năng, nhiều ngăn tiện dụng','Versace',6800,'https://res.cloudinary.com/hoahien/image/upload/v1718520611/cq8q1vajnt3qnfoir3bf.jpg',15,5),(23,NULL,NULL,'2024-05-13 00:00:00.000000','lethanh2022@gmail.com','Túi xách sang trọng, chất liệu cao cấp','Prada',7300,'https://res.cloudinary.com/hoahien/image/upload/v1718520611/tlthftmjv5dmdv5df9o9.jpg',16,5),(24,NULL,NULL,'2024-05-14 00:00:00.000000','minhha1999@gmail.com','Túi xách thể thao, phong cách năng động','Nike',4500,'https://res.cloudinary.com/hoahien/image/upload/v1718520612/egf3xhv7z8h8ahpttjc6.jpg',17,5),(25,NULL,NULL,'2024-05-15 00:00:00.000000','quynhtran1998@gmail.com','Túi xách đi biển, kiểu dáng thời trang','Hermes',9200,'https://res.cloudinary.com/hoahien/image/upload/v1718561112/rf9haiiz3kukgyhernll.jpg',18,5),(26,NULL,NULL,'2024-05-16 00:00:00.000000','hoangnam2000@gmail.com','Túi xách văn phòng, thiết kế tinh tế','Chanel',8400,'https://res.cloudinary.com/hoahien/image/upload/v1718561112/objtbc6whdj89onstroy.jpg',19,5),(27,NULL,NULL,'2024-05-17 00:00:00.000000','thuydung1997@gmail.com','Túi xách đi chơi, phù hợp mọi hoàn cảnh','Burberry',6700,'https://res.cloudinary.com/hoahien/image/upload/v1718561112/xr0lba9auslptyzyrw1o.jpg',20,5),(28,NULL,NULL,'2024-05-18 00:00:00.000000','tuananh1995@gmail.com','Túi xách đeo chéo, phong cách trẻ trung','Fendi',5100,'https://res.cloudinary.com/hoahien/image/upload/v1718561111/ll7t86gkxewozrl7ukkk.jpg',21,5),(29,NULL,NULL,'2024-05-19 00:00:00.000000','minhkhoa1996@gmail.com','Túi xách du lịch, sức chứa lớn','Samsonite',7800,'https://res.cloudinary.com/hoahien/image/upload/v1718520611/cq8q1vajnt3qnfoir3bf.jpg',22,5),(30,NULL,NULL,'2024-05-20 00:00:00.000000','hoamai1998@gmail.com','Túi xách mini, kiểu dáng dễ thương','Kate Spade',4200,'https://res.cloudinary.com/hoahien/image/upload/v1718521194/ytnvfb0hpaxodhajas3m.jpg',23,5),(31,NULL,NULL,'2024-05-21 00:00:00.000000','huongly1994@gmail.com','Túi xách nữ thời trang, đẳng cấp','Gucci',9200,'https://res.cloudinary.com/hoahien/image/upload/v1718610112/gdhie8ni329yo2xr2sch.jpg',1,1),(32,NULL,NULL,'2024-05-22 00:00:00.000000','anhthuy1993@gmail.com','Túi xách cổ điển, phong cách quý phái','Louis Vuitton',11000,'https://res.cloudinary.com/hoahien/image/upload/v1718610112/ab9s5m0rakl47zcvindm.jpg',2,1),(33,NULL,NULL,'2024-05-23 00:00:00.000000','minhquan1992@gmail.com','Túi xách da thật, phong cách doanh nhân','Montblanc',12500,'https://res.cloudinary.com/hoahien/image/upload/v1718610112/rhks5zjpeq1bodamnd1j.jpg',3,1),(34,NULL,NULL,'2024-05-24 00:00:00.000000','hoangyen1991@gmail.com','Túi xách phong cách Bohemian, thoải mái','Free People',4800,'https://res.cloudinary.com/hoahien/image/upload/v1718610112/aaljlxqjigfl0frxve6j.jpg',4,1),(35,NULL,NULL,'2024-05-25 00:00:00.000000','nguyenthaonguyen1990@gmail.com','Túi xách mini, phù hợp cho tiệc tối','Michael Kors',6000,'https://res.cloudinary.com/hoahien/image/upload/v1718610112/dbtduw98sdwnm6vayqyd.jpg',5,1),(36,NULL,NULL,'2024-05-26 00:00:00.000000','vananh1993@gmail.com','Túi xách thanh lịch, phù hợp công sở','Prada',8500,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/lnhirwpf83lhmqfkkw05.jpg',1,1),(37,NULL,NULL,'2024-05-27 00:00:00.000000','minhthu1994@gmail.com','Túi xách da sang trọng, đẳng cấp','Chanel',12000,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/kbl7hink3jjxat9brafd.jpg',2,1),(38,NULL,NULL,'2024-05-28 00:00:00.000000','duyhoang1992@gmail.com','Túi xách da mềm mại, tiện dụng','Hermès',14500,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/vlzx4muoo2nexmnbdl4f.jpg',3,1),(39,NULL,NULL,'2024-05-29 00:00:00.000000','trangnguyen1991@gmail.com','Túi xách vintage, phong cách cổ điển','Dolce & Gabbana',9700,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/kpgjz3uryrstsppaff63.jpg',4,1),(40,NULL,NULL,'2024-05-30 00:00:00.000000','anhtu1990@gmail.com','Túi xách mini tiện lợi, phong cách hiện đại','Balenciaga',6800,'https://res.cloudinary.com/hoahien/image/upload/v1718610111/zlx6uyywm2od02pltse4.jpg',5,1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(300) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi8jnqq05sk5nkma3pfp3ylqrt` (`product_id`),
  CONSTRAINT `FKi8jnqq05sk5nkma3pfp3ylqrt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `product_images` WRITE;
INSERT INTO `product_images` VALUES (1,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/o208szqc3sgnkyn6zcyz.jpg',1),(2,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/a2hzt3blu6p9on368yen.jpg',2),(3,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/bga8dtnpjygmvnlo62z0.jpg',3),(4,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/v7fwmrdc4buqvbwlp8w8.jpg',4),(5,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/li7raxe9hpqa9fr1rq3l.jpg',5),(6,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/itqjomb5zycee8zfgggf.jpg',6),(7,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/lbbr0lzbh2ibrlxaaqny.jpg',8),(8,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/qyabmpvhqzxvip7ttoa2.jpg',7),(9,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/jcqhcg1xbif0pbvoehff.jpg',9),(10,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/uzjviho3bhvjdvfeerfi.jpg',10),(11,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/r24yayijgci6lilrepqs.jpg',11),(12,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/o5rly554kkwvj1gg8wbb.jpg',12),(13,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520612/egf3xhv7z8h8ahpttjc6.jpg',13),(14,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520611/cq8q1vajnt3qnfoir3bf.jpg',14),(15,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520611/tlthftmjv5dmdv5df9o9.jpg',15),(16,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718521194/ytnvfb0hpaxodhajas3m.jpg',16),(17,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718521194/fiyasonbvf3yteensjqp.jpg',17),(18,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718521194/ujpsganksaakurhoxyor.jpg',18),(19,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718521194/bry2bcj6i1wc4d7ehdad.jpg',19),(20,'https://res.cloudinary.com/dvj8ldn8b/image/upload/v1718520613/a2hzt3blu6p9on368yen.jpg',20);
UNLOCK TABLES;


DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(3,'ROLE_USER'),(4,'ROLE_STAFF');
UNLOCK TABLES;


DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`),
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKrhfovtciq1l558cw6udg0h0d3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
LOCK TABLES `user_roles` WRITE;
INSERT INTO `user_roles` VALUES (2,4),(1,1),(14,3),(13,3),(10,3),(15,1);

UNLOCK TABLES;

