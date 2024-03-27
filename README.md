# Banking System Graduation Project (ITI)
## 1. Banking System Design
#### ● We received a Required Document from the client
![Screenshot 2023-10-22 210826](https://github.com/Ahmedelbermawy/Bank_system_graduation_project/assets/133806022/921f5c42-373c-4302-9adc-ba5e8257950f)
#### ● We Start to Draw The ERD
![ERD (1)](https://github.com/doaaredaa/Banking-System/assets/164890615/1e7598e0-facd-4b6d-b600-32f1e356d216)
#### ● We Start to Execute The Mapping
![Mapping (1)](https://github.com/doaaredaa/Banking-System/assets/164890615/14708e53-4e7b-4421-93fb-d8da8161d3f0)
#### ● implementation of OLTP schema
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
#### ● Denormalized database into Star Schema
```
Business Process "Transactions "
Grain "Low Level"
Dimensions -----> Account - Branch - Customer -ATM - Date - card
Fact Table: Transaction Table
```
#### ● Star OLTP schema
![Capture](https://github.com/doaaredaa/Banking-System/assets/164890615/699247fa-f866-404a-8e05-f9f6adb8f66d)

## 4. Business Intelligence Using SSIS & SSAS & SSRS
#### ● Integration using SSIS
![Fact](https://github.com/doaaredaa/Banking-System/assets/164890615/32a2d528-4a9e-4e0b-8bd0-974e19e2c6e3)
#### ● Cube Generation
##### The cube is generalized about Business and Specified for the CEO And CMO Should closely track financial performance, set clear goals, and analyze key metrics to measure profits. they must identify and manage risks by conducting assessments and creating strategies to mitigate potential threats.
![0](https://github.com/doaaredaa/Banking-System/assets/164890615/cb950501-22cf-4e4c-bf23-0af55f2c284e)
#### ● Reporting using SSRS
![6](https://github.com/doaaredaa/Banking-System/assets/164890615/2d73e816-484f-404d-9ea0-e8ed23b7b326)

## 5. Visualization
#### ● Using Power BI
##### The analysis of the Bank application history data of sales, customer, product, and operations departments to figure out the company's performance to get an overview insight of both departments will empower the company to make data-driven decisions that can lead to increased revenue, cost savings, improved customer satisfaction, and enhance overall business performance. It allows businesses to respond to market dynamics, customer preferences, and operational challenges more effectively and provides valuable insights to the operations, marketing, and sales teams for informed decision-making.

*Watch and Try IT Using* [My Dashboard](https://www.novypro.com/project/banking-system-%7C-analysis-dashboard)

![Power BI](https://github.com/doaaredaa/Banking-System/assets/164890615/8431f32a-024e-458d-80b6-1c05a9e33df6)
#### ● Using Tableau
![WhatsApp Image 2024-03-23 at 1 31 37 AM](https://github.com/doaaredaa/Banking-System/assets/164890615/209224c3-0df0-4593-ab0e-1acc8b831595)












