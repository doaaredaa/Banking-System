# Banking System Graduation Project (ITI)
## 1. Banking System Design
#### First we Received a Required Document from the client.
![Screenshot 2023-10-22 210826](https://github.com/Ahmedelbermawy/Bank_system_graduation_project/assets/133806022/921f5c42-373c-4302-9adc-ba5e8257950f)
#### Second We Start to Draw The ERD.
![ERD (1)](https://github.com/doaaredaa/Banking-System/assets/164890615/1e7598e0-facd-4b6d-b600-32f1e356d216)
#### Thrid We Start to Execute The Mapping.
![Mapping (1)](https://github.com/doaaredaa/Banking-System/assets/164890615/14708e53-4e7b-4421-93fb-d8da8161d3f0)
#### Fourth implementation of OLTP schema.
![OLTP_Final](https://github.com/doaaredaa/Banking-System/assets/164890615/05d818b2-c3f0-4a65-b70b-5b3dd98b8d77)
## 2. Let's go for structure
```
CREATE DATABASE [Union_Bank]
GO
USE [Union_Bank]
GO
CREATE TABLE [dbo].[Account](
	[Customer ID] [int] NULL,
	[Account Number] [int] NOT NULL,
	[Account Type] [nvarchar](255) NULL,
	[Balance] [float] NOT NULL,
	[Status] [nvarchar](255) NULL,
	[Branch ID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Atm](
	[ATM ID] [int] NOT NULL,
	[Location] [nvarchar](255) NULL,
	[ATM Status] [nvarchar](255) NULL,
	[Branch ID] [int] NULL,
 CONSTRAINT [pk52] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] NOT NULL,
	[BranchName] [nvarchar](255) NULL,
	[Branch_Location] [nvarchar](255) NULL,
 CONSTRAINT [pk3] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Card](
	[CardNumber] [varchar](50) NOT NULL,
	[Card_Type] [nvarchar](50) NOT NULL,
	[Card_Status] [nvarchar](50) NOT NULL,
	[Expiry_Date] [date] NOT NULL,
	[CSV] [int] NULL,
	[Account_Number] [int] NULL,
 CONSTRAINT [pk10001] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[BD] [date] NULL,
 CONSTRAINT [pk1] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Customer_Phones](
	[Mobile Number] [varchar](15) NOT NULL,
	[Customer_ID] [int] NOT NULL,
 CONSTRAINT [pk2] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Department](
	[Dnumber] [int] NOT NULL,
	[DName] [varchar](50) NULL,
	[MGRID] [int] NULL,
 CONSTRAINT [pk4] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[employee](
	[Employee ID] [int] NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Salary] [float] NULL,
	[Position] [varchar](50) NULL,
	[Branch ID] [int] NULL,
	[SuperVisor_ID] [int] NULL,
	[DNO] [int] NULL,
 CONSTRAINT [pk500] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Loan](
	[LoanID] [int] NOT NULL,
	[Amount] [varchar](50) NULL,
	[Loan Months Terms] [varchar](50) NULL,
	[Start Date] [date] NULL,
	[End Date] [date] NULL,
	[Loan Type] [varchar](50) NULL,
	[Interest Rate] [float] NULL,
	[Customer ID] [int] NULL,
	[Branch ID] [int] NULL,
 CONSTRAINT [pk60] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[transactions_ATM_Account](
	[TransactionId] [bigint] NOT NULL,
	[TransactionTypeId] [int] NOT NULL,
	[Amount] [money] NULL,
	[TransactionDate] [date] NOT NULL,
	[Account Number] [int] NULL,
	[ATM ID] [int] NULL,
 CONSTRAINT [pk30] PRIMARY KEY CLUSTERED 
GO
CREATE TABLE [dbo].[Transcations](
	[Transaction_Type_Id] [int] NOT NULL,
	[TransactionType] [varchar](100) NOT NULL,
 CONSTRAINT [pk9] PRIMARY KEY CLUSTERED 
GO
```
## 3. Data Warehousing
#### Denormalized database into Star Schema.



