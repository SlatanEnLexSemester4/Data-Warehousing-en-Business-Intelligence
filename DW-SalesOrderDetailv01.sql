use PrototypeDW

create Table Fact_SalesOrderDetail (
	OrderDetailKey INT PRIMARY KEY,
	OrderKey INT NOT NULL,
	ProductKey INT NOT NULL,
	SpecialOfferKey INT NOT NULL,
	CustomerKey INT NOT NULL,
	SalesPersonKey INT NOT NULL,
	TerritoryKey INT NOT NULL,
	OrderDateKey INT NOT NULL,
	ShipDateKey INT NOT NULL,
	ShipToAddressKey INT NOT NULL,
	BillToAddressKey INT NOT NULL,
	ShipMethodKey INT NOT NULL,
	UnitPrice Money NOT NULL,
	UnitDiscount Money NOT NULL,
	LineTotal Money NOT NULL,
	Quantity INT NOT NULL,
	Subtotal Money NOT NULL,
	TaxAmount Money NOT NULL,
	TotalDue Money NOT NULL
	)

create Table Dim_Product (
	ProductKey INT PRIMARY KEY,
	ProductName nvarchar(50) not null,
	MakeFlag bit not null,
	Color nvarchar(15) not null,
	Size nvarchar(5) not null,
	Weight decimal(8,2) not null,
	Category nvarchar(50) not null,
	SubCategory nvarchar(50) not null,
	SellStartDateKey int not null,
	SellEndDateKey int not null,
	DiscontinuedDateKey int not null,
	ModifiedDateKey int not null
	)

create table Dim_Customer (
	CustomerKey	INT primary key,	
	Store nvarchar(50) not null,
	TerritoryName nvarchar(50) not null,
	CountryName nvarchar(50) not null,
	ModifiedDateKey int not null,
	)

CREATE TABLE dbo.Dim_Date (
   DateKey INT,
   Date DATE NOT NULL,
   Day TINYINT NOT NULL,
   DaySuffix CHAR(2) NOT NULL,
   Weekday TINYINT NOT NULL,
   WeekDayName VARCHAR(10) NOT NULL,
   WeekDayName_Short CHAR(3) NOT NULL,
   DOWInMonth TINYINT NOT NULL,
   DayOfYear SMALLINT NOT NULL,
   WeekOfMonth TINYINT NOT NULL,
   WeekOfYear TINYINT NOT NULL,
   Month TINYINT NOT NULL,
   MonthName VARCHAR(10) NOT NULL,
   MonthName_Short CHAR(3) NOT NULL,
   Quarter TINYINT NOT NULL,
   QuarterName VARCHAR(6) NOT NULL,
   Year INT NOT NULL,
   MMYYYY CHAR(6) NOT NULL,
   MonthYear CHAR(7) NOT NULL,
   IsWeekend BIT NOT NULL,
   PRIMARY KEY CLUSTERED ([DateKey] ASC)
   )

create table Dim_Address (
	AddressKey int primary key,
	City nvarchar(30) not null,
	PostalCode nvarchar(15) not null,
	AddressLine nvarchar(132) not null,
	StateProvenceName nvarchar(50) not null,
	TerritoryName nvarchar(50) not null,
	CountryName nvarchar(50) not null,
	ModifiedDateKey int not null
	)

create table Dim_SpecialOffer (
	SpecialOfferKey int primary key,
	Description nvarchar(255) not null,
	DiscountPct smallmoney not null,
	Category nvarchar(50) not null,
	StartDateKey int not null,
	EndDateKey int not null
	)

create table Dim_SalesPerson (
	SalesPersonKey int primary key,
	TerritoryName nvarchar(50) not null,
	CountryName nvarchar(50) not null,
	Firstname nvarchar(50) not null,
	MiddleName nvarchar(50) not null,
	LastName nvarchar(50) not null,
	Fullname nvarchar(150) not null,
	)

create table Dim_Territory (
	TerritoryKey int primary key,
	TerritoryName nvarchar(50) not null,
	CountryName nvarchar(50) not null,
	ModifiedDateKey int not null
	)

create table Dim_ShipMethod (
	ShipMethodKey int primary key,
	ShipMethodName nvarchar(50) not null
	)






