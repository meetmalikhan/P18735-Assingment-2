-- Collections Creation

-- Products Creation
db.createCollection('products')

-- Suppliers Creation
db.createCollection('suppliers')

-- Retailers Creation
db.createCollection('retailers')

-- Markets Creation
db.createCollection('markets')

-- Orders Creation
db.createCollection('orders')

-- Reviews Creation
db.createCollection('reviews')

-- Supply Contact Creation
db.createCollection('supplycontract')

-- Stock Creation
db.createCollection('stock')

-- User Account Creation
db.createCollection('useraccount')

-- Deliveries Creation
db.createCollection('deliveries')

-- Employees Creation
db.createCollection('employees')


-- Data Insertion into Customers Collection
db.customers.insertMany([
  {
    _id: "C001",
    name: "John Doe",
    email: "john.doe@example.com",
    address: "10 Downing Street, London, SW1A 2AA",
    phoneNumber: "+44 20 7925 0918",
    registrationDate: ISODate("2023-04-01T00:00:00Z"),
    purchasedProducts: [
      { productId: "P001", quantity: 2 },
      { productId: "P002", quantity: 1 }
    ]
  },
  {
    _id: "C002",
    name: "Jane Smith",
    email: "jane.smith@example.com",
    address: "221B Baker Street, London, NW1 6XE",
    phoneNumber: "+44 20 7935 8901",
    registrationDate: ISODate("2023-05-15T00:00:00Z"),
    purchasedProducts: [
      { productId: "P003", quantity: 3 },
      { productId: "P004", quantity: 1 }
    ]
  },
  {
    _id: "C003",
    name: "Emily Johnson",
    email: "emily.johnson@example.com",
    address: "1600 Pennsylvania Avenue NW, Washington, DC 20500",
    phoneNumber: "+44 20 7321 2222",
    registrationDate: ISODate("2023-06-10T00:00:00Z"),
    purchasedProducts: [
      { productId: "P005", quantity: 1 },
      { productId: "P006", quantity: 2 }
    ]
  },
  {
    _id: "C004",
    name: "Michael Brown",
    email: "michael.brown@example.com",
    address: "1 Infinite Loop, Cupertino, CA 95014",
    phoneNumber: "+44 20 7214 1234",
    registrationDate: ISODate("2023-07-20T00:00:00Z"),
    purchasedProducts: [
      { productId: "P007", quantity: 5 },
      { productId: "P008", quantity: 2 }
    ]
  },
  {
    _id: "C005",
    name: "Sarah Davis",
    email: "sarah.davis@example.com",
    address: "742 Evergreen Terrace, Springfield, IL 62704",
    phoneNumber: "+44 20 8899 5555",
    registrationDate: ISODate("2023-08-30T00:00:00Z"),
    purchasedProducts: [
      { productId: "P009", quantity: 4 },
      { productId: "P010", quantity: 1 }
    ]
  },
  {
    _id: "C006",
    name: "David Wilson",
    email: "david.wilson@example.com",
    address: "30 St Mary Axe, London, EC3A 8BF",
    phoneNumber: "+44 20 7071 5000",
    registrationDate: ISODate("2023-09-05T00:00:00Z"),
    purchasedProducts: [
      { productId: "P011", quantity: 2 },
      { productId: "P012", quantity: 1 }
    ]
  },
  {
    _id: "C007",
    name: "Laura Taylor",
    email: "laura.taylor@example.com",
    address: "50 Bedford Square, London, WC1B 3DP",
    phoneNumber: "+44 20 7631 6000",
    registrationDate: ISODate("2023-10-12T00:00:00Z"),
    purchasedProducts: [
      { productId: "P013", quantity: 1 },
      { productId: "P014", quantity: 3 }
    ]
  },
  {
    _id: "C008",
    name: "Robert Evans",
    email: "robert.evans@example.com",
    address: "100 Westminster Bridge Road, London, SE1 7UT",
    phoneNumber: "+44 20 7737 5800",
    registrationDate: ISODate("2023-11-01T00:00:00Z"),
    purchasedProducts: [
      { productId: "P015", quantity: 2 },
      { productId: "P016", quantity: 1 }
    ]
  },
  {
    _id: "C009",
    name: "Emma Thomas",
    email: "emma.thomas@example.com",
    address: "200 Oxford Street, London, W1D 1NU",
    phoneNumber: "+44 20 7935 3777",
    registrationDate: ISODate("2023-12-03T00:00:00Z"),
    purchasedProducts: [
      { productId: "P017", quantity: 4 },
      { productId: "P018", quantity: 2 }
    ]
  },
  {
    _id: "C010",
    name: "William Harris",
    email: "william.harris@example.com",
    address: "10 King's Road, London, SW3 4QN",
    phoneNumber: "+44 20 7349 5000",
    registrationDate: ISODate("2024-01-10T00:00:00Z"),
    purchasedProducts: [
      { productId: "P019", quantity: 3 },
      { productId: "P020", quantity: 1 }
    ]
  }
]);

-- Data Insertion into Products Collection
db.products.insertMany([
  {
    _id: "P001",
    name: "Organic Apples",
    type: "Fruit",
    price: 2.50,
    quantity: 100,
    supplierIds: ["S001"],
    retailerIds: ["R001", "R002"]
  },
  {
    _id: "P002",
    name: "Whole Wheat Bread",
    type: "Bakery",
    price: 1.20,
    quantity: 50,
    supplierIds: ["S002"],
    retailerIds: ["R003"]
  },
  {
    _id: "P003",
    name: "Free Range Eggs",
    type: "Dairy",
    price: 3.00,
    quantity: 200,
    supplierIds: ["S003"],
    retailerIds: ["R001", "R004"]
  },
  {
    _id: "P004",
    name: "Almond Milk",
    type: "Beverage",
    price: 2.00,
    quantity: 150,
    supplierIds: ["S004"],
    retailerIds: ["R002"]
  },
  {
    _id: "P005",
    name: "Broccoli",
    type: "Vegetable",
    price: 1.50,
    quantity: 80,
    supplierIds: ["S005"],
    retailerIds: ["R005"]
  },
  {
    _id: "P006",
    name: "Cheddar Cheese",
    type: "Dairy",
    price: 4.00,
    quantity: 120,
    supplierIds: ["S006"],
    retailerIds: ["R003", "R006"]
  },
  {
    _id: "P007",
    name: "Chicken Breast",
    type: "Meat",
    price: 5.50,
    quantity: 90,
    supplierIds: ["S007"],
    retailerIds: ["R001", "R007"]
  },
  {
    _id: "P008",
    name: "Orange Juice",
    type: "Beverage",
    price: 2.30,
    quantity: 60,
    supplierIds: ["S008"],
    retailerIds: ["R004"]
  },
  {
    _id: "P009",
    name: "Greek Yogurt",
    type: "Dairy",
    price: 3.20,
    quantity: 140,
    supplierIds: ["S009"],
    retailerIds: ["R002", "R008"]
  },
  {
    _id: "P010",
    name: "Salmon Fillet",
    type: "Fish",
    price: 8.00,
    quantity: 70,
    supplierIds: ["S010"],
    retailerIds: ["R005", "R009"]
  }
]);

-- Data Data Insertion into Suppliers Collection
db.suppliers.insertMany([
  {
    _id: "S001",
    name: "Green Valley Farms",
    turnover: 500000,
    numberOfStores: 5,
    numberOfEmployees: 50,
    products: ["P001"]
  },
  {
    _id: "S002",
    name: "Baker's Delight",
    turnover: 300000,
    numberOfStores: 3,
    numberOfEmployees: 30,
    products: ["P002"]
  },
  {
    _id: "S003",
    name: "Sunny Meadows Dairy",
    turnover: 800000,
    numberOfStores: 10,
    numberOfEmployees: 80,
    products: ["P003"]
  },
  {
    _id: "S004",
    name: "Nutty Naturals",
    turnover: 400000,
    numberOfStores: 4,
    numberOfEmployees: 40,
    products: ["P004"]
  },
  {
    _id: "S005",
    name: "Veggie Delights",
    turnover: 600000,
    numberOfStores: 6,
    numberOfEmployees: 60,
    products: ["P005"]
  },
  {
    _id: "S006",
    name: "Cheese Heaven",
    turnover: 700000,
    numberOfStores: 7,
    numberOfEmployees: 70,
    products: ["P006"]
  },
  {
    _id: "S007",
    name: "Farm Fresh Meats",
    turnover: 900000,
    numberOfStores: 8,
    numberOfEmployees: 90,
    products: ["P007"]
  },
  {
    _id: "S008",
    name: "Citrus Grove",
    turnover: 350000,
    numberOfStores: 3,
    numberOfEmployees: 35,
    products: ["P008"]
  },
  {
    _id: "S009",
    name: "Yogurt Bliss",
    turnover: 450000,
    numberOfStores: 5,
    numberOfEmployees: 45,
    products: ["P009"]
  },
  {
    _id: "S010",
    name: "Ocean's Catch",
    turnover: 1000000,
    numberOfStores: 10,
    numberOfEmployees: 100,
    products: ["P010"]
  }
]);

--Data Insertion into Retailers Collection
db.retailers.insertMany([
  {
    _id: "R001",
    name: "Local Fresh Market",
    location: "123 High Street, London, W1A 1AA",
    openingHours: "08:00-20:00",
    products: ["P001", "P003", "P007"]
  },
  {
    _id: "R002",
    name: "Green Grocers",
    location: "456 Market Street, London, E1 6AN",
    openingHours: "09:00-21:00",
    products: ["P001", "P004", "P009"]
  },
  {
    _id: "R003",
    name: "Healthy Eats",
    location: "789 King Road, London, SW3 5UD",
    openingHours: "07:00-19:00",
    products: ["P002", "P006"]
  },
  {
    _id: "R004",
    name: "Daily Essentials",
    location: "321 Queen Street, London, NW1 5DB",
    openingHours: "10:00-22:00",
    products: ["P003", "P008"]
  },
  {
    _id: "R005",
    name: "Organic Foods",
    location: "654 Princess Avenue, London, SW1W 0NY",
    openingHours: "09:00-18:00",
    products: ["P005", "P010"]
  },
  {
    _id: "R006",
    name: "Cheese and More",
    location: "987 Abbey Road, London, NW8 9AY",
    openingHours: "08:00-17:00",
    products: ["P006"]
  },
  {
    _id: "R007",
    name: "Meat Masters",
    location: "159 Baker Street, London, NW1 6XE",
    openingHours: "08:00-19:00",
    products: ["P007"]
  },
  {
    _id: "R008",
    name: "Yogurt Heaven",
    location: "753 Fleet Street, London, EC4Y 1HT",
    openingHours: "07:00-20:00",
    products: ["P009"]
  },
  {
    _id: "R009",
    name: "Fish Market",
    location: "852 London Bridge Road, London, SE1 9DD",
    openingHours: "06:00-18:00",
    products: ["P010"]
  },
  {
    _id: "R010",
    name: "Bread Basket",
    location: "147 Piccadilly Circus, London, W1J 9LL",
    openingHours: "08:00-20:00",
    products: ["P002"]
  }
]);

--Data Insertion into Markets Collection
db.markets.insertMany([
  {
    _id: "M001",
    name: "Borough Market",
    location: "8 Southwark Street, London, SE1 1TL",
    marketDay: "Monday-Saturday",
    productsAvailable: ["P001", "P005", "P010"]
  },
  {
    _id: "M002",
    name: "Camden Market",
    location: "Camden Lock Place, London, NW1 8AF",
    marketDay: "Everyday",
    productsAvailable: ["P002", "P003", "P004"]
  },
  {
    _id: "M003",
    name: "Portobello Road Market",
    location: "Portobello Road, London, W11 1AN",
    marketDay: "Saturday",
    productsAvailable: ["P001", "P006", "P007"]
  },
  {
    _id: "M004",
    name: "Old Spitalfields Market",
    location: "16 Horner Square, London, E1 6EW",
    marketDay: "Everyday",
    productsAvailable: ["P004", "P005", "P008"]
  },
  {
    _id: "M005",
    name: "Covent Garden Market",
    location: "The Piazza, London, WC2E 8RF",
    marketDay: "Monday-Saturday",
    productsAvailable: ["P002", "P003", "P009"]
  },
  {
    _id: "M006",
    name: "Greenwich Market",
    location: "5B Greenwich Market, London, SE10 9HZ",
    marketDay: "Wednesday-Sunday",
    productsAvailable: ["P001", "P006", "P010"]
  },
  {
    _id: "M007",
    name: "Brick Lane Market",
    location: "91 Brick Lane, London, E1 6QR",
    marketDay: "Sunday",
    productsAvailable: ["P007", "P008", "P009"]
  },
  {
    _id: "M008",
    name: "Broadway Market",
    location: "Broadway Market, London, E8 4QJ",
    marketDay: "Saturday",
    productsAvailable: ["P002", "P003", "P010"]
  },
  {
    _id: "M009",
    name: "Maltby Street Market",
    location: "41 Maltby Street, London, SE1 3PA",
    marketDay: "Saturday-Sunday",
    productsAvailable: ["P004", "P005", "P006"]
  },
  {
    _id: "M010",
    name: "Columbia Road Flower Market",
    location: "Columbia Road, London, E2 7RG",
    marketDay: "Sunday",
    productsAvailable: ["P001", "P008", "P009"]
  }
]);

--Data Insertion into Order Collection
db.orders.insertMany([
  {
    _id: "O001",
    customerId: "C001",
    retailerId: "R001",
    products: [
      { productId: "P001", quantity: 2, price: 2.50 },
      { productId: "P003", quantity: 1, price: 3.00 }
    ],
    orderDate: ISODate("2023-04-10T00:00:00Z"),
    totalPrice: 8.00
  },
  {
    _id: "O002",
    customerId: "C002",
    retailerId: "R002",
    products: [
      { productId: "P002", quantity: 3, price: 1.20 },
      { productId: "P009", quantity: 1, price: 3.20 }
    ],
    orderDate: ISODate("2023-05-20T00:00:00Z"),
    totalPrice: 6.80
  },
  {
    _id: "O003",
    customerId: "C003",
    retailerId: "R003",
    products: [
      { productId: "P006", quantity: 2, price: 4.00 },
      { productId: "P007", quantity: 1, price: 5.50 }
    ],
    orderDate: ISODate("2023-06-15T00:00:00Z"),
    totalPrice: 13.50
  },
  {
    _id: "O004",
    customerId: "C004",
    retailerId: "R004",
    products: [
      { productId: "P008", quantity: 1, price: 2.30 },
      { productId: "P003", quantity: 1, price: 3.00 }
    ],
    orderDate: ISODate("2023-07-25T00:00:00Z"),
    totalPrice: 5.30
  },
  {
    _id: "O005",
    customerId: "C005",
    retailerId: "R005",
    products: [
      { productId: "P005", quantity: 4, price: 1.50 },
      { productId: "P010", quantity: 2, price: 8.00 }
    ],
    orderDate: ISODate("2023-08-30T00:00:00Z"),
    totalPrice: 19.00
  },
  {
    _id: "O006",
    customerId: "C006",
    retailerId: "R001",
    products: [
      { productId: "P001", quantity: 1, price: 2.50 },
      { productId: "P007", quantity: 3, price: 5.50 }
    ],
    orderDate: ISODate("2023-09-10T00:00:00Z"),
    totalPrice: 18.00
  },
  {
    _id: "O007",
    customerId: "C007",
    retailerId: "R002",
    products: [
      { productId: "P004", quantity: 2, price: 2.00 },
      { productId: "P009", quantity: 1, price: 3.20 }
    ],
    orderDate: ISODate("2023-10-15T00:00:00Z"),
    totalPrice: 7.20
  },
  {
    _id: "O008",
    customerId: "C008",
    retailerId: "R003",
    products: [
      { productId: "P002", quantity: 1, price: 1.20 },
      { productId: "P006", quantity: 1, price: 4.00 }
    ],
    orderDate: ISODate("2023-11-05T00:00:00Z"),
    totalPrice: 5.20
  },
  {
    _id: "O009",
    customerId: "C009",
    retailerId: "R004",
    products: [
      { productId: "P008", quantity: 2, price: 2.30 },
      { productId: "P003", quantity: 1, price: 3.00 }
    ],
    orderDate: ISODate("2023-12-10T00:00:00Z"),
    totalPrice: 7.60
  },
  {
    _id: "O010",
    customerId: "C010",
    retailerId: "R005",
    products: [
      { productId: "P005", quantity: 2, price: 1.50 },
      { productId: "P010", quantity: 1, price: 8.00 }
    ],
    orderDate: ISODate("2024-01-20T00:00:00Z"),
    totalPrice: 11.00
  }
]);

--Data Insertion into Review Collection
db.reviews.insertMany([
  {
    _id: "R001",
    customerId: "C001",
    productId: "P001",
    rating: 5,
    comment: "Fresh and delicious apples!",
    reviewDate: ISODate("2023-04-12T00:00:00Z")
  },
  {
    _id: "R002",
    customerId: "C002",
    productId: "P002",
    rating: 4,
    comment: "Good quality bread.",
    reviewDate: ISODate("2023-05-22T00:00:00Z")
  },
  {
    _id: "R003",
    customerId: "C003",
    productId: "P003",
    rating: 5,
    comment: "The eggs are very fresh.",
    reviewDate: ISODate("2023-06-18T00:00:00Z")
  },
  {
    _id: "R004",
    customerId: "C004",
    productId: "P004",
    rating: 3,
    comment: "Almond milk is okay, but a bit expensive.",
    reviewDate: ISODate("2023-07-27T00:00:00Z")
  },
  {
    _id: "R005",
    customerId: "C005",
    productId: "P005",
    rating: 4,
    comment: "Broccoli is fresh and crisp.",
    reviewDate: ISODate("2023-08-31T00:00:00Z")
  },
  {
    _id: "R006",
    customerId: "C006",
    productId: "P006",
    rating: 5,
    comment: "Cheddar cheese tastes amazing!",
    reviewDate: ISODate("2023-09-12T00:00:00Z")
  },
  {
    _id: "R007",
    customerId: "C007",
    productId: "P007",
    rating: 5,
    comment: "Chicken breast is very tender.",
    reviewDate: ISODate("2023-10-17T00:00:00Z")
  },
  {
    _id: "R008",
    customerId: "C008",
    productId: "P008",
    rating: 4,
    comment: "Orange juice is refreshing.",
    reviewDate: ISODate("2023-11-08T00:00:00Z")
  },
  {
    _id: "R009",
    customerId: "C009",
    productId: "P009",
    rating: 5,
    comment: "Greek yogurt is thick and creamy.",
    reviewDate: ISODate("2023-12-12T00:00:00Z")
  },
  {
    _id: "R010",
    customerId: "C010",
    productId: "P010",
    rating: 4,
    comment: "Salmon fillet is fresh and tasty.",
    reviewDate: ISODate("2024-01-22T00:00:00Z")
  }
]);

-- Data Insertion into Supply Contract Collection
db.supplycontract.insertMany([
  {
    _id: "SC001",
    supplierId: "S001",
    retailerId: "R001",
    productId: "P001",
    contractTerms: "12-month contract with monthly deliveries",
    startDate: ISODate("2023-01-01T00:00:00Z"),
    endDate: ISODate("2023-12-31T00:00:00Z")
  },
  {
    _id: "SC002",
    supplierId: "S002",
    retailerId: "R002",
    productId: "P002",
    contractTerms: "6-month contract with bi-weekly deliveries",
    startDate: ISODate("2023-02-01T00:00:00Z"),
    endDate: ISODate("2023-07-31T00:00:00Z")
  },
  {
    _id: "SC003",
    supplierId: "S003",
    retailerId: "R003",
    productId: "P003",
    contractTerms: "24-month contract with weekly deliveries",
    startDate: ISODate("2023-03-01T00:00:00Z"),
    endDate: ISODate("2025-02-28T00:00:00Z")
  },
  {
    _id: "SC004",
    supplierId: "S004",
    retailerId: "R004",
    productId: "P004",
    contractTerms: "12-month contract with monthly deliveries",
    startDate: ISODate("2023-04-01T00:00:00Z"),
    endDate: ISODate("2024-03-31T00:00:00Z")
  },
  {
    _id: "SC005",
    supplierId: "S005",
    retailerId: "R005",
    productId: "P005",
    contractTerms: "18-month contract with bi-weekly deliveries",
    startDate: ISODate("2023-05-01T00:00:00Z"),
    endDate: ISODate("2024-10-31T00:00:00Z")
  },
  {
    _id: "SC006",
    supplierId: "S006",
    retailerId: "R006",
    productId: "P006",
    contractTerms: "12-month contract with weekly deliveries",
    startDate: ISODate("2023-06-01T00:00:00Z"),
    endDate: ISODate("2024-05-31T00:00:00Z")
  },
  {
    _id: "SC007",
    supplierId: "S007",
    retailerId: "R007",
    productId: "P007",
    contractTerms: "24-month contract with monthly deliveries",
    startDate: ISODate("2023-07-01T00:00:00Z"),
    endDate: ISODate("2025-06-30T00:00:00Z")
  },
  {
    _id: "SC008",
    supplierId: "S008",
    retailerId: "R008",
    productId: "P008",
    contractTerms: "6-month contract with weekly deliveries",
    startDate: ISODate("2023-08-01T00:00:00Z"),
    endDate: ISODate("2024-01-31T00:00:00Z")
  },
  {
    _id: "SC009",
    supplierId: "S009",
    retailerId: "R009",
    productId: "P009",
    contractTerms: "12-month contract with bi-weekly deliveries",
    startDate: ISODate("2023-09-01T00:00:00Z"),
    endDate: ISODate("2024-08-31T00:00:00Z")
  },
  {
    _id: "SC010",
    supplierId: "S010",
    retailerId: "R010",
    productId: "P010",
    contractTerms: "18-month contract with monthly deliveries",
    startDate: ISODate("2023-10-01T00:00:00Z"),
    endDate: ISODate("2025-03-31T00:00:00Z")
  }
]);

--Data Insertion into Stock Collection
db.stock.insertMany([
  {
    _id: "ST001",
    productId: "P001",
    retailerId: "R001",
    quantity: 50,
    restockThreshold: 10,
    lastRestocked: ISODate("2023-04-01T00:00:00Z")
  },
  {
    _id: "ST002",
    productId: "P002",
    retailerId: "R002",
    quantity: 30,
    restockThreshold: 5,
    lastRestocked: ISODate("2023-05-05T00:00:00Z")
  },
  {
    _id: "ST003",
    productId: "P003",
    retailerId: "R003",
    quantity: 70,
    restockThreshold: 15,
    lastRestocked: ISODate("2023-06-10T00:00:00Z")
  },
  {
    _id: "ST004",
    productId: "P004",
    retailerId: "R004",
    quantity: 40,
    restockThreshold: 10,
    lastRestocked: ISODate("2023-07-15T00:00:00Z")
  },
  {
    _id: "ST005",
    productId: "P005",
    retailerId: "R005",
    quantity: 20,
    restockThreshold: 5,
    lastRestocked: ISODate("2023-08-20T00:00:00Z")
  },
  {
    _id: "ST006",
    productId: "P006",
    retailerId: "R006",
    quantity: 60,
    restockThreshold: 10,
    lastRestocked: ISODate("2023-09-25T00:00:00Z")
  },
  {
    _id: "ST007",
    productId: "P007",
    retailerId: "R007",
    quantity: 80,
    restockThreshold: 20,
    lastRestocked: ISODate("2023-10-30T00:00:00Z")
  },
  {
    _id: "ST008",
    productId: "P008",
    retailerId: "R008",
    quantity: 25,
    restockThreshold: 5,
    lastRestocked: ISODate("2023-11-04T00:00:00Z")
  },
  {
    _id: "ST009",
    productId: "P009",
    retailerId: "R009",
    quantity: 35,
    restockThreshold: 10,
    lastRestocked: ISODate("2023-12-09T00:00:00Z")
  },
  {
    _id: "ST010",
    productId: "P010",
    retailerId: "R010",
    quantity: 45,
    restockThreshold: 15,
    lastRestocked: ISODate("2024-01-14T00:00:00Z")
  }
]);

-- Data Insertion into User Account Collection
db.useraccount.insertMany([
  {
    _id: "UA001",
    username: "john_doe",
    email: "john.doe@example.com",
    password: "password123",
    role: "customer",
    customerId: "C001"
  },
  {
    _id: "UA002",
    username: "jane_smith",
    email: "jane.smith@example.com",
    password: "password123",
    role: "customer",
    customerId: "C002"
  },
  {
    _id: "UA003",
    username: "emily_johnson",
    email: "emily.johnson@example.com",
    password: "password123",
    role: "customer",
    customerId: "C003"
  },
  {
    _id: "UA004",
    username: "michael_brown",
    email: "michael.brown@example.com",
    password: "password123",
    role: "customer",
    customerId: "C004"
  },
  {
    _id: "UA005",
    username: "sarah_davis",
    email: "sarah.davis@example.com",
    password: "password123",
    role: "customer",
    customerId: "C005"
  },
  {
    _id: "UA006",
    username: "david_wilson",
    email: "david.wilson@example.com",
    password: "password123",
    role: "customer",
    customerId: "C006"
  },
  {
    _id: "UA007",
    username: "laura_taylor",
    email: "laura.taylor@example.com",
    password: "password123",
    role: "customer",
    customerId: "C007"
  },
  {
    _id: "UA008",
    username: "robert_evans",
    email: "robert.evans@example.com",
    password: "password123",
    role: "customer",
    customerId: "C008"
  },
  {
    _id: "UA009",
    username: "emma_thomas",
    email: "emma.thomas@example.com",
    password: "password123",
    role: "customer",
    customerId: "C009"
  },
  {
    _id: "UA010",
    username: "william_harris",
    email: "william.harris@example.com",
    password: "password123",
    role: "customer",
    customerId: "C010"
  }
]);

--Data Insertion into Deliveries Collection
db.deliveries.insertMany([
  {
    _id: "D001",
    supplierId: "S001",
    retailerId: "R001",
    products: [
      { productId: "P001", quantity: 50 },
      { productId: "P003", quantity: 20 }
    ],
    deliveryDate: ISODate("2023-04-15T00:00:00Z"),
    deliveryStatus: "Delivered"
  },
  {
    _id: "D002",
    supplierId: "S002",
    retailerId: "R002",
    products: [
      { productId: "P002", quantity: 30 },
      { productId: "P009", quantity: 15 }
    ],
    deliveryDate: ISODate("2023-05-18T00:00:00Z"),
    deliveryStatus: "Pending"
  },
  {
    _id: "D003",
    supplierId: "S003",
    retailerId: "R003",
    products: [
      { productId: "P003", quantity: 40 },
      { productId: "P006", quantity: 25 }
    ],
    deliveryDate: ISODate("2023-06-22T00:00:00Z"),
    deliveryStatus: "Delivered"
  },
  {
    _id: "D004",
    supplierId: "S004",
    retailerId: "R004",
    products: [
      { productId: "P004", quantity: 60 },
      { productId: "P008", quantity: 20 }
    ],
    deliveryDate: ISODate("2023-07-25T00:00:00Z"),
    deliveryStatus: "Delivered"
  },
  {
    _id: "D005",
    supplierId: "S005",
    retailerId: "R005",
    products: [
      { productId: "P005", quantity: 35 },
      { productId: "P010", quantity: 10 }
    ],
    deliveryDate: ISODate("2023-08-30T00:00:00Z"),
    deliveryStatus: "Pending"
  },
  {
    _id: "D006",
    supplierId: "S006",
    retailerId: "R006",
    products: [
      { productId: "P006", quantity: 50 },
      { productId: "P007", quantity: 30 }
    ],
    deliveryDate: ISODate("2023-09-10T00:00:00Z"),
    deliveryStatus: "Delivered"
  },
  {
    _id: "D007",
    supplierId: "S007",
    retailerId: "R007",
    products: [
      { productId: "P007", quantity: 70 },
      { productId: "P001", quantity: 40 }
    ],
    deliveryDate: ISODate("2023-10-15T00:00:00Z"),
    deliveryStatus: "Pending"
  },
  {
    _id: "D008",
    supplierId: "S008",
    retailerId: "R008",
    products: [
      { productId: "P008", quantity: 25 },
      { productId: "P003", quantity: 30 }
    ],
    deliveryDate: ISODate("2023-11-20T00:00:00Z"),
    deliveryStatus: "Delivered"
  },
  {
    _id: "D009",
    supplierId: "S009",
    retailerId: "R009",
    products: [
      { productId: "P009", quantity: 45 },
      { productId: "P002", quantity: 20 }
    ],
    deliveryDate: ISODate("2023-12-05T00:00:00Z"),
    deliveryStatus: "Pending"
  },
  {
    _id: "D010",
    supplierId: "S010",
    retailerId: "R010",
    products: [
      { productId: "P010", quantity: 55 },
      { productId: "P005", quantity: 15 }
    ],
    deliveryDate: ISODate("2024-01-18T00:00:00Z"),
    deliveryStatus: "Delivered"
  }
]);

-- Data Insertion into Employees Collection
db.employees.insertMany([
  {
    _id: "E001",
    name: "Alice Johnson",
    role: "Sales Manager",
    email: "alice.johnson@example.com",
    phoneNumber: "+44 20 7123 4567",
    supplierId: "S001"
  },
  {
    _id: "E002",
    name: "Bob Smith",
    role: "Warehouse Supervisor",
    email: "bob.smith@example.com",
    phoneNumber: "+44 20 7123 4568",
    supplierId: "S002"
  },
  {
    _id: "E003",
    name: "Carol Davis",
    role: "Logistics Coordinator",
    email: "carol.davis@example.com",
    phoneNumber: "+44 20 7123 4569",
    supplierId: "S003"
  },
  {
    _id: "E004",
    name: "David Lee",
    role: "Quality Control Inspector",
    email: "david.lee@example.com",
    phoneNumber: "+44 20 7123 4570",
    supplierId: "S004"
  },
  {
    _id: "E005",
    name: "Eva Brown",
    role: "Operations Manager",
    email: "eva.brown@example.com",
    phoneNumber: "+44 20 7123 4571",
    supplierId: "S005"
  },
  {
    _id: "E006",
    name: "Frank Wilson",
    role: "Procurement Specialist",
    email: "frank.wilson@example.com",
    phoneNumber: "+44 20 7123 4572",
    supplierId: "S006"
  },
  {
    _id: "E007",
    name: "Grace Taylor",
    role: "Inventory Manager",
    email: "grace.taylor@example.com",
    phoneNumber: "+44 20 7123 4573",
    supplierId: "S007"
  },
  {
    _id: "E008",
    name: "Henry Martin",
    role: "Customer Service Representative",
    email: "henry.martin@example.com",
    phoneNumber: "+44 20 7123 4574",
    supplierId: "S008"
  },
  {
    _id: "E009",
    name: "Ivy Walker",
    role: "Marketing Coordinator",
    email: "ivy.walker@example.com",
    phoneNumber: "+44 20 7123 4575",
    supplierId: "S009"
  },
  {
    _id: "E010",
    name: "Jack Harris",
    role: "Supply Chain Analyst",
    email: "jack.harris@example.com",
    phoneNumber: "+44 20 7123 4576",
    supplierId: "S010"
  }
]);

-- Queries for Database

-- Query to find all products available in a specific market
db.markets.find({ _id: "M001" }, { productsAvailable: 1, _id: 0 })

-- Query to find the total quantity of each product delivered to a specific retailer
db.deliveries.aggregate([
  { $match: { retailerId: "R001" } },
  { $unwind: "$products" },
  {
    $group: {
      _id: "$products.productId",
      totalQuantity: { $sum: "$products.quantity" }
    }
  },
  {
    $lookup: {
      from: "products",
      localField: "_id",
      foreignField: "_id",
      as: "productDetails"
    }
  },
  { $unwind: "$productDetails" },
  {
    $project: {
      _id: 1,
      totalQuantity: 1,
      "productDetails.name": 1
    }
  }
])

-- Query to calculate the average rating of each product and list top 5 rated products
db.reviews.aggregate([
  {
    $group: {
      _id: "$productId",
      averageRating: { $avg: "$rating" }
    }
  },
  {
    $lookup: {
      from: "products",
      localField: "_id",
      foreignField: "_id",
      as: "productDetails"
    }
  },
  { $unwind: "$productDetails" },
  {
    $project: {
      _id: 1,
      averageRating: 1,
      "productDetails.name": 1
    }
  },
  { $sort: { averageRating: -1 } },
  { $limit: 5 }
])

-- Query to find the total sales value for each retailer
db.orders.aggregate([
  {
    $group: {
      _id: "$retailerId",
      totalSales: { $sum: "$totalPrice" }
    }
  },
  {
    $lookup: {
      from: "retailers",
      localField: "_id",
      foreignField: "_id",
      as: "retailerDetails"
    }
  },
  { $unwind: "$retailerDetails" },
  {
    $project: {
      _id: 1,
      totalSales: 1,
      "retailerDetails.name": 1
    }
  }
])

-- Query to list all products and their corresponding stock details
db.products.aggregate([
  {
    $lookup: {
      from: "stock",
      localField: "_id",
      foreignField: "productId",
      as: "stockDetails"
    }
  },
  { $unwind: "$stockDetails" },
  {
    $lookup: {
      from: "retailers",
      localField: "stockDetails.retailerId",
      foreignField: "_id",
      as: "retailerDetails"
    }
  },
  { $unwind: "$retailerDetails" },
  {
    $project: {
      _id: 1,
      name: 1,
      type: 1,
      price: 1,
      "stockDetails.quantity": 1,
      "stockDetails.restockThreshold": 1,
      "retailerDetails.name": 1
    }
  }
])

