drop database WatchShop

-- Tạo bảng Category
CREATE TABLE Category (
  cID INT PRIMARY KEY,
  cName VARCHAR(255)
);

-- Tạo bảng Product
CREATE TABLE Product (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(255),
  price DECIMAL(10, 2),
  tittle VARCHAR(255),
  description VARCHAR(MAX),
  color VARCHAR(50),
  quantity INT,
  cID INT,
  sell_ID INT,
  FOREIGN KEY (cID) REFERENCES Category(cID)
);


-- Tạo bảng Account
CREATE TABLE Account (
  id INT IDENTITY(1,1) PRIMARY KEY,
  username VARCHAR(255),
  fullname VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  isSell int,
  isAdmin int
);

-- Tạo bảng Order
CREATE TABLE [Order] (
  id INT IDENTITY(1,1) PRIMARY KEY,
  date DATE,
  Aid INT,
  totalmoney DECIMAL(10, 2),
  FOREIGN KEY (Aid) REFERENCES Account(id)
);

-- Tạo bảng OrderDetail
CREATE TABLE OrderDetail (
  oid INT,
  pid INT,
  quantity INT,
  price DECIMAL(10, 2),
  PRIMARY KEY (oid, pid),
  FOREIGN KEY (oid) REFERENCES [Order](id),
  FOREIGN KEY (pid) REFERENCES Product(id)
);



INSERT INTO Category (cID, cName) VALUES
(1, 'Samsung'),
(2, 'Apple'),
(3, 'Huawei'),
(4, 'Xiaomi'),
(5, 'Oppo');


INSERT INTO Product (name, image, price, tittle, description, color, quantity, cID,sell_ID)
VALUES
  -- Sản phẩm cho cID = 1 (Samsung)
  ('Samsung Galaxy Watch 5', 'samsung1.jpg', 100, 'Samsung Galaxy Watch 5 40mm smartwatch', 'The Galaxy Watch5 watch does not have many changes in design compared to the previous generation, it is still a harmonious flat beveled round watch face combined with a sturdy aluminum alloy frame, creating a feeling of dynamism and modernity when worn. wear on hand. Samsung has also replaced the tempered glass material with Sapphire glass for the Watch5 generation to help increase the rigidity of the screen, limiting cracks and scratches during use.', 'Black', 10, 1, 2),
  ('Samsung Galaxy Watch6 Classic', 'samsung2.jpg', 238, 'Samsung Galaxy Watch6 Classic 47mm smartwatch', 'Samsung Galaxy Watch6 Classic 47mm is designed to be minimalist and suitable for users daily lives. Integrating many smart features to help users take care of their health in the most effective way, with a variety of sports modes to meet all training needs', 'Silver', 10, 1, 2),
  ('Samsung Galaxy Watch6 LTE', 'samsung3.jpg', 180, 'Samsung Galaxy Watch6 LTE 40mm smartwatch', 'Samsung smartwatches are always equipped with high-end sensors with high accuracy. With a modern BioActive sensor, Samsung Galaxy Watch6 can comprehensively monitor the body thanks to features such as skin temperature monitoring, sleep monitoring, heart rate measurement, electrocardiogram, SpO2, blood pressure measurement, etc. ..', 'Black', 10, 1, 3),
  ('Samsung Galaxy Fit3', 'samsung4.jpg', 56, 'Samsung Galaxy Fit3 smart bracelet', 'After 3 years of waiting, Samsung fans can welcome the successor to the Galaxy Fit2 smartband called Samsung Galaxy Fit3. This smart bracelet promises to bring an impressive experience with fashionable design, many advanced health and sports monitoring features, and battery life to meet basic usage needs.', 'Pink', 10, 1, 2),
  ('Samsung Galaxy Watch6 Classic LTE', 'samsung5.jpg', 302, 'Samsung Galaxy Watch6 Classic LTE 43mm smartwatch', 'The super product Galaxy Watch6 Classic LTE 43mm was introduced at the Galaxy Unpacked event at the end of July. Promising to not only be a powerful assistant that always accompanies users to monitor and measure body indicators, but also a luxurious and elegant accessory for the user.', 'Black', 10, 1, 3),
  
  -- Sản phẩm cho cID = 2 (Apple)
  ('Apple Watch SE 2023', 'apple1.jpg', 202, 'Apple Watch SE 2023 GPS smart watch 40mm with aluminum bezel and sport strap', 'Apple Watch SE 2023 GPS 40mm with aluminum bezel and sport strap is the smartwatch with the most accessible price from Apple, is the optimal budget choice for users but still ensures a beautiful design and supports a variety of features. as well as daily conveniences.', 'Black', 10, 2, 2),
  ('Apple Watch Series 9', 'apple2.jpg', 323, 'Apple Watch Series 9 GPS smart watch 41mm with aluminum bezel and sport strap', 'Apple Watch Series 9 GPS 41mm with aluminum bezel and sports strap has a luxurious design and trendy colors to suit all user styles. The watch is integrated with advanced health monitoring features, diverse sports modes along with accurate GPS positioning, ready to accompany users in daily life.', 'Pink', 10, 2, 2),
  ('Apple Watch SE 2022', 'apple3.jpg', 182, 'Apple Watch SE 2022 GPS smart watch 40mm with aluminum bezel and sport strap', 'During the Far Out 2022 event, Apple introduced a series of new products including the Apple Watch SE 2022 smartwatch. This latest cheap smartwatch model from Apple promises to make iFans restless. possessing many attractive features', 'White', 10, 2, 3),
  ('Apple Watch Ultra 2 ', 'apple4.jpg', 763, 'Apple Watch Ultra 2 GPS + Cellular smartwatch 49mm with Titanium rim and Trail strap size M/L', 'Apple Watch Ultra 2 GPS + Cellular 49mm with Titanium rim and Trail strap size M/L is a professional sports watch with trendy design, outstanding durability and smart features to support health and exercise monitoring. . This will be a perfect choice for sports enthusiasts.', 'Black', 10, 2, 3),
  ('Apple Watch Series 9', 'apple5.jpg', 349, 'Apple Watch Series 9 GPS smart watch 45mm aluminum bezel sport strap size S/M', 'Referring to the most prominent smartwatch in 2023, it is certainly indispensable to mention the name Apple Watch Series 9, in which the Apple Watch Series 9 GPS model has 45mm aluminum bezel, sport strap size S/M with sophisticated appearance, central processor. Powerful, exceptionally bright screen and unique double-tap feature promise to conquer the most demanding users.', 'Red', 10, 2, 2),
  
  -- Sản phẩm cho cID = 3 (Huawei)
  ('Huawei Watch GT4', 'huawei1.jpg', 201, 'Huawei Watch GT4 smartwatch with leather strap', 'Huawei Watch GT 4 impresses users with its two 46mm and 41mm versions, luxurious design and diverse colors: blue, gray, brown, black, silver white. Besides, the battery life is up to 14 days for the 46mm version and 7 days for the 41mm version to help improve the usage experience without worrying about interruptions in the middle. Other outstanding features include: smart trainer with more than 100 exercises, TruSleep sleep monitoring,...', 'Brown', 10, 3, 2),
  ('Huawei Band 8', 'huawei2.jpg', 50, 'Huawei Band 8 smart bracelet', 'Huawei Band 8 has a 1.47-inch AMOLED screen with a 2.5D curved design and a resolution of 368 x 194 pixels to help bring impressive visibility. The watch has a large battery for a maximum use of up to 14 days and a full charge time of only 45 minutes. The device is equipped with many smart sensors that help monitor health indicators such as heart rate, sleep and supports up to 100 different exercise modes.', 'Black', 10, 3, 2),
  ('Huawei Watch GT4 ', 'huawei3.jpg', 323, 'Huawei Watch GT4 smartwatch with steel strap', 'Huawei Watch GT4 is equipped with TruSeen 5.5+ technology along with up to 14 days of battery life and a quality AMOLED panel. In particular, a versatile training mode and many attractive features are integrated. All will help Huawei Watch GT4 help you improve your comfortable and extremely modern life.', 'Silver', 10, 3, 3),
  (' Huawei Watch Kids 4 Pro', 'huawei4.jpg', 115, 'Huawei Watch Kids 4 Pro smartwatch', 'The Huawei Watch Kids 4 Pro smartwatch has incredible design and performance, and can be a companion for children anywhere. Parents will feel more secure when their children use this Huawei watch when they cannot be supervised when they leave the house.', 'Pink', 10, 3, 2),
  ('Huawei Watch Fit 2', 'huawei5.jpg', 133, 'Huawei Watch Fit 2 smartwatch with leather strap', 'Huawei Watch Fit 2 smart watch with leather strap is a new classy and extremely sophisticated design. Not only does it have a super cool appearance, Huawei smartwatches also give users a uniquely different experience with countless useful features.', 'White', 10, 3, 3),
  
  -- Sản phẩm cho cID = 4 (Xiaomi)
  ('Mi Band 8 Pro', 'xiaomi1.jpg', 70, 'Mi Band 8 Pro smart bracelet', 'Mi Band 8 Pro is the next generation of smartband launched by Xiaomi. With many design improvements, a large screen to expand the display space, independent positioning capabilities, support for more than 150 sports modes,... this will be a version worth owning and upgrading for people. use.', 'Black', 10, 4, 2),
  ('Xiaomi Redmi Watch 3', 'xiaomi2.jpg', 100, 'Xiaomi Redmi Watch 3 42.6mm smart watch', 'With a price range of less than 3 million VND, a smartwatch that can both make calls and be equipped with independent GPS is quite rare, but recently Xiaomi launched the Xiaomi Redmi Watch 3 smartwatch product with both of the above features. Besides, it is also equipped with many features to support health monitoring and exercise for users.', 'White', 10, 4, 3),
  
  -- Sản phẩm cho cID = 5 (Xiaomi)
  ('Oppo Band 2', 'oppo1.jpg', 40, 'Oppo Band 2 smart bracelet with white - blue silicone strap', 'The point that impressed me when I first looked at this product is that the face is rectangular similar to a smartwatch instead of the popular capsule shape of a bracelet. Thanks to the larger face, the touch operation will be more accurate. Accurately, more information is also displayed in one frame. The watch face has a thickness of 11.4 mm (if not counting the protruding sensor, which is 10.6 mm), when worn on the hand, it is extremely compact, not rough even if the wrist is small.', 'White', 10, 5, 3);

INSERT INTO Account (username, fullname, email, password, isSell, isAdmin)
VALUES
  ('user1', 'User One', 'user1@example.com', '1', 0, 0),
  ('seller2', 'Seller two', 'seller2@example.com', '1', 1, 0),
  ('Admin1', 'Admin 1', 'admin1@example.com', '1', 0, 1),
  ('THANH2003', 'Pham Hoang Thanh', 'admin2@example.com', '1', 1, 1);
