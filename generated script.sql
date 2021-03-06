USE [master]
GO
/****** Object:  Database [clinic]    Script Date: 05/14/2017 10:06:30 ******/
CREATE DATABASE [clinic] ON  PRIMARY 
( NAME = N'clinic', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\clinic.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'clinic_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\clinic_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [clinic] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [clinic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [clinic] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [clinic] SET ANSI_NULLS OFF
GO
ALTER DATABASE [clinic] SET ANSI_PADDING OFF
GO
ALTER DATABASE [clinic] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [clinic] SET ARITHABORT OFF
GO
ALTER DATABASE [clinic] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [clinic] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [clinic] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [clinic] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [clinic] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [clinic] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [clinic] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [clinic] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [clinic] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [clinic] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [clinic] SET  ENABLE_BROKER
GO
ALTER DATABASE [clinic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [clinic] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [clinic] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [clinic] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [clinic] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [clinic] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [clinic] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [clinic] SET  READ_WRITE
GO
ALTER DATABASE [clinic] SET RECOVERY FULL
GO
ALTER DATABASE [clinic] SET  MULTI_USER
GO
ALTER DATABASE [clinic] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [clinic] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'clinic', N'ON'
GO
USE [clinic]
GO
/****** Object:  Table [dbo].[DiagItem]    Script Date: 05/14/2017 10:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagItem](
	[DI_DiagItemID] [int] IDENTITY(1,1) NOT NULL,
	[DI_Description] [nvarchar](100) NULL,
	[DI_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK__DiagItem__59A41DFD300424B4] PRIMARY KEY CLUSTERED 
(
	[DI_DiagItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/14/2017 10:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[A_AccountID] [int] IDENTITY(1,1) NOT NULL,
	[A_UserName] [nvarchar](25) NULL,
	[A_Password] [nvarchar](25) NULL,
	[A_AccountType] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[A_AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillingItem]    Script Date: 05/14/2017 10:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingItem](
	[BI_BillItemID] [int] IDENTITY(1,1) NOT NULL,
	[BI_Description] [nvarchar](100) NULL,
	[BI_UnitCost] [int] NULL,
	[BI_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BI_BillItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYM_Item]    Script Date: 05/14/2017 10:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYM_Item](
	[SI_SysItem] [int] IDENTITY(1,1) NOT NULL,
	[SI_Name] [nvarchar](50) NULL,
	[SI_Description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SI_SysItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Update_DiagItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc SP_LOGIN

--@ID varchar(50) ,
--@PWD varchar(50)

--AS
--Select * from dbo.Account
--where A_AccountID = @ID and A_Password = @PWD


--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID

--create proc DisplayVisit
--as
--select *
--from dbo.Visit


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID



--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

--	DI_DiagItemID int identity(1,1) primary key,
--	DI_Description nvarchar(100),
--	DI_Name nvarchar(50)
	

--create proc Add_DiagItem 
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DiagItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


create proc [dbo].[Update_DiagItem]
@ID int ,
@Name nvarchar(50),
@Description nvarchar(100)
as
UPDATE  dbo.DiagItem
set
DI_Name=@Name,
DI_Description = @Description
where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

--	BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
--	BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_PAYInfo
--@PAYID int ,
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--UPDATE  dbo.PaymentINFO
--set
--PAY_CardNumber=@CardNumber,
--PAY_ExpirationDate = @ExpDate,
--PAY_Security = @Security,
--PAY_PatientID =@PatientID
--where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Update_BillingItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID


--BI_BillItemID int identity(1,1) primary key ,
--	BI_Description nvarchar(100),
--	BI_UnitCost int,
	
	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


create proc [dbo].[Update_BillingItem]
@ID int ,
@Name nvarchar(50),
@Description nvarchar(100),
@Cost int
as
UPDATE  dbo.BillingItem
set
BI_Name=@Name,
BI_Description = @Description,
BI_UnitCost=@Cost
where BI_BillItemID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Update_SYSItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


create proc [dbo].[Update_SYSItem]
@ID int ,
@Name nvarchar(50),
@Description nvarchar(100)
as
UPDATE  dbo.SYM_Item
set
SI_Name=@Name,
SI_Description = @Description
where SI_SysItem= @ID
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_LOGIN]

@ID varchar(50) ,
@PWD varchar(50)

AS
Select * from dbo.Account
where A_AccountID = @ID and A_Password = @PWD


--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_PAYInfo
--@PAYID int ,
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--UPDATE  dbo.PaymentINFO
--set
--PAY_CardNumber=@CardNumber,
--PAY_ExpirationDate = @ExpDate,
--PAY_Security = @Security,
--PAY_PatientID =@PatientID
--where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Search_DiagItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc SP_LOGIN

--@ID varchar(50) ,
--@PWD varchar(50)

--AS
--Select * from dbo.Account
--where A_AccountID = @ID and A_Password = @PWD


--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID

--create proc DisplayVisit
--as
--select *
--from dbo.Visit


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID



--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

--	DI_DiagItemID int identity(1,1) primary key,
--	DI_Description nvarchar(100),
--	DI_Name nvarchar(50)
	

--create proc Add_DiagItem 
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


create proc [dbo].[Search_DiagItem]
@ID int
as
Select*
from dbo.DiagItem
where 
Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

--	BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
--	BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_PAYInfo
--@PAYID int ,
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--UPDATE  dbo.PaymentINFO
--set
--PAY_CardNumber=@CardNumber,
--PAY_ExpirationDate = @ExpDate,
--PAY_Security = @Security,
--PAY_PatientID =@PatientID
--where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Search_BillingItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID


--BI_BillItemID int identity(1,1) primary key ,
--	BI_Description nvarchar(100),
--	BI_UnitCost int,
	
	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


create proc [dbo].[Search_BillingItem]
@ID int
as
Select*
from dbo.BillingItem
where 
Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Search_SYSItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


create proc [dbo].[Search_SYSItem]
@ID int
as
Select*
from dbo.SYM_Item
where 
Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID
GO
/****** Object:  StoredProcedure [dbo].[Create_Account]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Create_Account] 
@UserName nvarchar(25),
@Password nvarchar(25),
@Type varchar(15),
@ret_Id int out 
as
begin
insert into dbo.Account 
(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)
select @ret_Id = SCOPE_IDENTITY();
end ;
GO
/****** Object:  StoredProcedure [dbo].[Add_DiagItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc SP_LOGIN

--@ID varchar(50) ,
--@PWD varchar(50)

--AS
--Select * from dbo.Account
--where A_AccountID = @ID and A_Password = @PWD


--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID

--create proc DisplayVisit
--as
--select *
--from dbo.Visit


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID



--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

--	DI_DiagItemID int identity(1,1) primary key,
--	DI_Description nvarchar(100),
--	DI_Name nvarchar(50)
	

create proc [dbo].[Add_DiagItem] 
@Name nvarchar(50),
@Description nvarchar(100)
as
insert into dbo.DiagItem 
(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

--	BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
--	BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_PAYInfo
--@PAYID int ,
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--UPDATE  dbo.PaymentINFO
--set
--PAY_CardNumber=@CardNumber,
--PAY_ExpirationDate = @ExpDate,
--PAY_Security = @Security,
--PAY_PatientID =@PatientID
--where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Add_BillingItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID


--BI_BillItemID int identity(1,1) primary key ,
--	BI_Description nvarchar(100),
--	BI_UnitCost int,
	
	
	
create proc [dbo].[Add_BillingItem]
@Name nvarchar(50),
@Description nvarchar(100),
@Cost int
as
insert into dbo.BillingItem
(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Add_SYMItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


create proc [dbo].[Add_SYMItem]
@Name nvarchar(50),
@Description nvarchar(100)
as
insert into dbo.SYM_Item 
(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID
GO
/****** Object:  Table [dbo].[Person]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[P_PersonID] [int] IDENTITY(1,1) NOT NULL,
	[P_Name] [nvarchar](50) NULL,
	[P_city] [nvarchar](50) NULL,
	[P_ZipCode] [int] NULL,
	[P_BirthDate] [date] NULL,
	[P_Phone] [nvarchar](20) NULL,
	[P_Email] [nvarchar](50) NULL,
	[P_AdmissionDate] [date] NULL,
	[P_SSN] [int] NULL,
	[P_AccountID] [int] NULL,
	[P_Image] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[P_PersonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PA_PatientID] [int] IDENTITY(1,1) NOT NULL,
	[PA_PersonID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PA_PatientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Add_PersonReturnID]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_PersonReturnID]
@Name            nvarchar(50),
@City            nvarchar(25),
@Zip_code        int,
@Birthdate       date, 
@Phone           nvarchar(20),
@E_mail          nvarchar(50),
@Image           image,
@AdmissionDate   date, 
@SSN             int ,
@AccountID     int ,
@ret_ID  int out 
as
begin 
insert into dbo.Person (P_Name,P_city,P_ZipCode,P_BirthDate,P_Phone,P_Email,P_Image,P_AdmissionDate,P_SSN,P_AccountID)values(@Name, @City, @Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID)
select @ret_ID =SCOPE_IDENTITY();
end;
GO
/****** Object:  StoredProcedure [dbo].[Add_Person]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Person] 
@Name nvarchar(50),
@City nvarchar(25),
@Zip_code int,
@Birthdate date ,
@Phone nvarchar(20),
@E_mail nvarchar(50),
@image image,
@AdmissionDate date ,
@SSN int ,
@AccountID int
as
insert into dbo.Person 
(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_Image,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@image,@AdmissionDate,@SSN,@AccountID)
GO
/****** Object:  StoredProcedure [dbo].[Search_Person]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


create proc [dbo].[Search_Person]
@ID int
as
Select *
from dbo.Person
where 
Convert(varchar,P_PersonID) like '%' + @ID + '%'
GO
/****** Object:  Table [dbo].[Representative]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Representative](
	[R_RepID] [int] IDENTITY(1,1) NOT NULL,
	[R_PersonID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[R_RepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Update_Person]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


create proc [dbo].[Update_Person]
@ID int,
@Name nvarchar(50),
@City nvarchar(25),
@Zip_code int,
@Birthdate date ,
@Phone nvarchar(20),
@E_mail nvarchar(50),
@AdmissionDate date ,
@SSN int ,
@AccountID int

as
UPDATE  dbo.Person
set
P_Name = @Name ,
P_city=@City,
P_ZipCode=@Zip_code,
P_BirthDate=@Birthdate,
P_Phone =@Phone,
P_Email = @E_mail,
P_AdmissionDate= @AdmissionDate,
P_SSN =@SSN,
P_AccountID =@AccountID
where P_PersonID = @ID
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Visit](
	[V_VisitID] [int] IDENTITY(1,1) NOT NULL,
	[V_Date] [date] NULL,
	[V_Index] [int] NULL,
	[V_Priority] [varchar](1) NULL,
	[V_PatientID] [int] NULL,
	[V_Check] [int] NULL,
 CONSTRAINT [PK__Visit__1A830637173876EA] PRIMARY KEY CLUSTERED 
(
	[V_VisitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Update_Rep]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


create proc [dbo].[Update_Rep]
@RepID int ,
@PersonID int
as
UPDATE  dbo.Representative
set
R_PersonID=@PersonID
where R_RepID= @RepID
GO
/****** Object:  StoredProcedure [dbo].[Update_Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


create proc [dbo].[Update_Patient]
@PatientID int ,
@PersonID int
as
UPDATE  dbo.Patient
set
PA_PersonID=@PersonID
where PA_PatientID= @PatientID
GO
/****** Object:  Table [dbo].[TreatItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatItem](
	[TI_TreatItemID] [int] IDENTITY(1,1) NOT NULL,
	[TI_Description] [nvarchar](200) NULL,
	[TI_RepID] [int] NULL,
	[TI_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TI_TreatItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Register]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--komyyyyyyyyyyy
create proc [dbo].[Register]
@Name            nvarchar(50),
@City            nvarchar(25),
@Zip_code        int,
@Birthdate       date, 
@Phone           nvarchar(20),
@E_mail          nvarchar(50),
@Image           image,
@AdmissionDate   date, 
@SSN             int ,

@UserName nvarchar(50),
@Password  nvarchar(50),
@Type  varchar(15)
as 

begin
declare @temp int

execute Create_Account @UserName ,@Password ,@Type ,@temp output
execute Add_Person @Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@temp


end
GO
/****** Object:  StoredProcedure [dbo].[Search_Rep]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


create proc [dbo].[Search_Rep]
@ID int
as
Select*
from dbo.Representative
where 
Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID
GO
/****** Object:  StoredProcedure [dbo].[Search_Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


create proc [dbo].[Search_Patient]
@ID int
as
Select*
from dbo.Patient
where 
Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Add_Rep]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Rep]
@Name            nvarchar(50),
@City            nvarchar(25),
@Zip_code        int,
@Birthdate       date, 
@Phone           nvarchar(20),
@E_mail          nvarchar(50),
@Image           image,
@AdmissionDate   date, 
@SSN             int ,
@AccountID       int
as
begin
declare @temp int
execute Add_PersonReturnID @Name ,@City ,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID,@temp output
insert into dbo.Representative(R_PersonID)values(@temp)
end;
GO
/****** Object:  StoredProcedure [dbo].[Add_Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Patient]
@Name            nvarchar(50),
@City            nvarchar(25),
@Zip_code        int,
@Birthdate       date, 
@Phone           nvarchar(20),
@E_mail          nvarchar(50),
@Image           image,
@AdmissionDate   date, 
@SSN             int ,
@AccountID       int
as
begin
declare @temp int
execute Add_PersonReturnID @Name ,@City ,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID,@temp output
insert into dbo.Patient (PA_PersonID)values(@temp)
end;
GO
/****** Object:  Table [dbo].[PaymentINFO]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentINFO](
	[PAY_InfoID] [int] IDENTITY(1,1) NOT NULL,
	[PAY_CardNumber] [int] NULL,
	[PAY_ExpirationDate] [date] NULL,
	[PAY_Security] [int] NULL,
	[PAY_PatientID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PAY_InfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Last20Visit4Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select s_name,d_name
--from tbl_students 
--Inner join tbl_depts
--on s_dept=d_id
--Add_Visit '2001-2-2' , 1 , 'B' , 1 , 1

--create proc First20Visit
--as
--SELECT top 20 
--v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
--FROM dbo.Visit v inner join dbo.Patient pa
--on
--v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
--inner join  dbo.Person p 
--on pa.PA_PersonID = p.P_PersonID 
--ORDER BY v.V_Date ASC

create proc [dbo].[Last20Visit4Patient]
@ID int
as
SELECT  
v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
FROM dbo.Visit v inner join dbo.Patient pa
on
v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
inner join  dbo.Person p 
on pa.PA_PersonID = p.P_PersonID
where v.V_PatientID = @ID
ORDER BY v.V_Date ASC
GO
/****** Object:  StoredProcedure [dbo].[Last10Visit4Patient]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select s_name,d_name
--from tbl_students 
--Inner join tbl_depts
--on s_dept=d_id
--Add_Visit '2001-2-2' , 1 , 'B' , 1 , 1

--create proc First20Visit
--as
--SELECT top 20 
--v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
--FROM dbo.Visit v inner join dbo.Patient pa
--on
--v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
--inner join  dbo.Person p 
--on pa.PA_PersonID = p.P_PersonID 
--ORDER BY v.V_Date ASC

create proc [dbo].[Last10Visit4Patient]
@ID int
as
SELECT top 20
v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
FROM dbo.Visit v inner join dbo.Patient pa
on
v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
inner join  dbo.Person p 
on pa.PA_PersonID = p.P_PersonID
where v.V_PatientID = @ID
ORDER BY v.V_Date Desc
GO
/****** Object:  StoredProcedure [dbo].[First20Visit]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[First20Visit]
as
SELECT top 20 
v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
FROM dbo.Visit v inner join dbo.Patient pa
on
v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
inner join  dbo.Person p 
on pa.PA_PersonID = p.P_PersonID 
ORDER BY v.V_Date ASC
GO
/****** Object:  StoredProcedure [dbo].[DisplayVisit]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc SP_LOGIN

--@ID varchar(50) ,
--@PWD varchar(50)

--AS
--Select * from dbo.Account
--where A_AccountID = @ID and A_Password = @PWD


--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID

create proc [dbo].[DisplayVisit]
as
select *
from dbo.Visit


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_PAYInfo
--@PAYID int ,
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--UPDATE  dbo.PaymentINFO
--set
--PAY_CardNumber=@CardNumber,
--PAY_ExpirationDate = @ExpDate,
--PAY_Security = @Security,
--PAY_PatientID =@PatientID
--where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Add_TreatItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID



--DI_DiagItemID int identity(1,1) primary key,
--DI_Description nvarchar(100)

create proc [dbo].[Add_TreatItem]
@Name nvarchar(50),
@Description nvarchar(100),
@RepID int
as
insert into dbo.TreatItem 
(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing](
	[B_BillID] [int] IDENTITY(1,1) NOT NULL,
	[B_Cost] [int] NULL,
	[B_VisitID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[B_BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Add_Visit]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Add_Visit '2008-11-11' , 1 , 'A' , 1 
create proc [dbo].[Add_Visit]
@Date date,
@V_index int,
@Priority varchar(1),
@Check int ,
@PatientID int 
as
insert into dbo.Visit 
(V_Date , V_Index , V_Priority ,V_Check ,V_PatientID) values (@Date , @V_index , @Priority ,@PatientID ,@Check)
GO
/****** Object:  StoredProcedure [dbo].[Add_PAYInfo]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

create proc [dbo].[Add_PAYInfo]
@CardNumber int,
@ExpDate date ,
@Security int ,
@PatientID int
as
insert into dbo.PaymentINFO
(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID
GO
/****** Object:  Table [dbo].[Diagnose]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diagnose](
	[D_DiagnoseID] [int] IDENTITY(1,1) NOT NULL,
	[D_Description] [nvarchar](200) NULL,
	[D_VisitID] [int] NULL,
	[D_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[D_DiagnoseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Symptoms]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Symptoms](
	[S_SymptomsID] [int] IDENTITY(1,1) NOT NULL,
	[S_Description] [nvarchar](200) NULL,
	[S_VisitID] [int] NULL,
	[S_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[S_SymptomsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Search_TreatItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID



--DI_DiagItemID int identity(1,1) primary key,
--DI_Description nvarchar(100)

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


create proc [dbo].[Search_TreatItem]
@ID int
as
Select*
from dbo.TreatItem
where 
Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[T_TreatmentID] [int] IDENTITY(1,1) NOT NULL,
	[T_Description] [nvarchar](200) NULL,
	[T_Visit] [int] NULL,
	[T_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[T_TreatmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Update_PAYInfo]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_BillAssociation
--@BillID int 
--as
--delete from dbo.BillingAssociation
--where Convert(varchar,BA_BillingID) =@BillID



--PAY_InfoID int identity(1,1) primary key ,
--	PAY_CardNumber int,
--	PAY_ExpirationDate date,
--	PAY_Security int,
--	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)

--create proc Add_PAYInfo
--@CardNumber int,
--@ExpDate date ,
--@Security int ,
--@PatientID int
--as
--insert into dbo.PaymentINFO
--(PAY_CardNumber , PAY_ExpirationDate,PAY_Security,PAY_PatientID) values (@CardNumber ,@ExpDate,@Security,@PatientID)


create proc [dbo].[Update_PAYInfo]
@PAYID int ,
@CardNumber int,
@ExpDate date ,
@Security int ,
@PatientID int
as
UPDATE  dbo.PaymentINFO
set
PAY_CardNumber=@CardNumber,
PAY_ExpirationDate = @ExpDate,
PAY_Security = @Security,
PAY_PatientID =@PatientID
where PAY_InfoID= @PAYID
GO
/****** Object:  StoredProcedure [dbo].[Update_TreatItem]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


create proc [dbo].[Update_TreatItem]
@ID int ,
@Name nvarchar(50),
@Description nvarchar(100),
@RepID int
as
UPDATE  dbo.TreatItem
set
TI_Name=@Name,
TI_Description = @Description,
TI_RepID = @RepID
where TI_TreatItemID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Update_Visit]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


create proc [dbo].[Update_Visit]
@ID int ,
@Date date,
@V_index int,
@Priority varchar(1),
@PatientID int 
as
UPDATE  dbo.Visit
set
V_Date=@Date,
V_Index=@V_index,
V_Priority=@Priority,
V_PatientID=@PatientID
where V_VisitID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Update_Treatment]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_VisitID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

create proc [dbo].[Update_Treatment]
@ID int ,
@Description nvarchar(200),
@VisitID int
as
UPDATE  dbo.Treatment
set
T_Description=@Description,
T_Visit=@VisitID
where T_TreatmentID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Update_Symptoms]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

create proc [dbo].[Update_Symptoms]
@ID int ,
@Description nvarchar(200),
@VisitID int
as
UPDATE  dbo.Symptoms
set
S_Description=@Description,
S_VisitID=@VisitID
where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Add_Symptoms]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Add_Symptoms]
@Description nvarchar(200),
@VisitID int
as
insert into dbo.Symptoms 
(S_Description , S_VisitID) values (@Description , @VisitID)
GO
/****** Object:  StoredProcedure [dbo].[Update_Diagnose]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

create proc [dbo].[Update_Diagnose]
@ID int ,
@Description nvarchar(200),
@VisitID int
as
UPDATE  dbo.Diagnose
set
D_Description=@Description,
D_VisitID=@VisitID
where D_VisitID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Update_Billing]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


create proc [dbo].[Update_Billing]
@ID int ,
@Cost int,
@VisitID int
as
UPDATE  dbo.Billing
set
B_Cost=@Cost,
B_VisitID=@VisitID
where B_BillID= @ID
GO
/****** Object:  Table [dbo].[TreatmentAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatmentAssociation](
	[TA_TreatmentID] [int] NOT NULL,
	[TA_TreatItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TA_TreatmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Symptoms_Association]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Symptoms_Association](
	[SA_Symptoms] [int] NOT NULL,
	[SA_SymItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SA_Symptoms] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Add_Diagnose]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


create proc [dbo].[Add_Diagnose]
@Description nvarchar(200),
@VisitID int
as
insert into dbo.Diagnose 
(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID
GO
/****** Object:  StoredProcedure [dbo].[Add_Billing]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


create proc [dbo].[Add_Billing]
@Cost int,
@VisitID int
as
insert into dbo.Billing 
(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID
GO
/****** Object:  Table [dbo].[BillingAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingAssociation](
	[BA_BillingID] [int] NOT NULL,
	[BA_BillItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BA_BillingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Add_Treatment]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_VisitID= @ID

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)
	
	
create proc [dbo].[Add_Treatment]
@Description nvarchar(200),
@VisitID int
as
insert into dbo.Treatment 
(T_Description , T_Visit) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(50),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_VisitID= @ID
GO
/****** Object:  Table [dbo].[DiagnoseAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnoseAssociation](
	[DA_DiagnoseID] [int] NOT NULL,
	[DA_DiagItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DA_DiagnoseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[PatientInfo]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select s_name,d_name
--from tbl_students 
--Inner join tbl_depts
--on s_dept=d_id
--Add_Visit '2001-2-2' , 1 , 'B' , 1 , 1

--create proc First20Visit
--as
--SELECT top 20 
--v.V_Date , v.V_Index ,v.V_Priority ,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
--FROM dbo.Visit v inner join dbo.Patient pa
--on
--v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
--inner join  dbo.Person p 
--on pa.PA_PersonID = p.P_PersonID 
--ORDER BY v.V_Date ASC

--create proc Last10Visit4Patient
--@ID int
--as
--SELECT top 20
--v.V_Date , v.V_Index ,v.V_Priority , p.P_AdmissionDate , p.P_SSN
--FROM dbo.Visit v inner join dbo.Patient pa
--on
--v.V_PatientID = pa.PA_PatientID and v.V_Check = 1
--inner join  dbo.Person p 
--on pa.PA_PersonID = p.P_PersonID
--where v.V_PatientID = @ID
--ORDER BY v.V_Date Desc

create proc [dbo].[PatientInfo]
as
SELECT
p.P_Name , v.V_Date , di.D_Name,di.D_Description ,tr.T_Name ,tr.T_Description ,sy.S_Name ,sy.S_Description , b.B_Cost
FROM dbo.Person p inner join dbo.Patient pa
on
p.P_PersonID = pa.PA_PersonID
inner join dbo.Visit v
on pa.PA_PatientID = v.V_PatientID
inner join dbo.Diagnose di
on v.V_VisitID = di.D_VisitID
inner join dbo.Treatment tr
on v.V_VisitID = tr.T_Visit
inner join dbo.Symptoms sy
on v.V_VisitID = sy.S_VisitID 
inner join dbo.Billing b
on v.V_VisitID = b.B_VisitID
GO
/****** Object:  StoredProcedure [dbo].[Delete_TreatAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID

--  TA_TreatmentID int primary key FOREIGN KEY REFERENCES Treatment(T_TreatmentID),
--	TA_TreatItemID int FOREIGN KEY REFERENCES TreatItem(TI_TreatItemID)

--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


create proc [dbo].[Delete_TreatAssociation]
@TreamID int 
as
delete from dbo.TreatmentAssociation
where Convert(varchar,TA_TreatmentID) =@TreamID
GO
/****** Object:  StoredProcedure [dbo].[Delete_SysAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--SA_Symptoms int primary key FOREIGN KEY REFERENCES Symptoms(S_SymptomsID),
--SA_SymItemID int FOREIGN KEY REFERENCES SYM_Item(SI_SysItem)

--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


create proc [dbo].[Delete_SysAssociation]
@SysID int 
as
delete from dbo.Symptoms_Association
where Convert(varchar,SA_Symptoms) = @SysID
GO
/****** Object:  StoredProcedure [dbo].[Delete_DiagAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

--DA_DiagnoseID int primary key  FOREIGN KEY REFERENCES Diagnose(D_DiagnoseID),
--	DA_DiagItemID int FOREIGN KEY REFERENCES DiagItem(DI_DiagItemID)
	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


create proc [dbo].[Delete_DiagAssociation]
@DiagID int 
as
delete from dbo.DiagnoseAssociation
where Convert(varchar,DA_DiagnoseID) = @DiagID
GO
/****** Object:  StoredProcedure [dbo].[Delete_BillAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

--create proc Add_BillAssociation
--@BillID int ,
--@BillItemID int 
--as
--insert into dbo.BillingAssociation
--(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


create proc [dbo].[Delete_BillAssociation]
@BillID int 
as
delete from dbo.BillingAssociation
where Convert(varchar,BA_BillingID) =@BillID
GO
/****** Object:  StoredProcedure [dbo].[Add_TreatAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID

--  TA_TreatmentID int primary key FOREIGN KEY REFERENCES Treatment(T_TreatmentID),
--	TA_TreatItemID int FOREIGN KEY REFERENCES TreatItem(TI_TreatItemID)

create proc [dbo].[Add_TreatAssociation]
@TreamID int ,
@TreatItemID int 
as
insert into dbo.TreatmentAssociation
(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID
GO
/****** Object:  StoredProcedure [dbo].[Add_SysAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--SA_Symptoms int primary key FOREIGN KEY REFERENCES Symptoms(S_SymptomsID),
--SA_SymItemID int FOREIGN KEY REFERENCES SYM_Item(SI_SysItem)

create proc [dbo].[Add_SysAssociation]
@SymID int ,
@SysItemID int 
as
insert into dbo.Symptoms_Association
(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc DeletePerson
--@ID int 
--as
--delete from dbo.Person
--where Convert(varchar,Person_ID) = @ID
GO
/****** Object:  StoredProcedure [dbo].[Add_DiagAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

--DA_DiagnoseID int primary key  FOREIGN KEY REFERENCES Diagnose(D_DiagnoseID),
--	DA_DiagItemID int FOREIGN KEY REFERENCES DiagItem(DI_DiagItemID)
	
create proc [dbo].[Add_DiagAssociation]
@DiagID int ,
@DiagItemID int 
as
insert into dbo.DiagnoseAssociation
(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID
GO
/****** Object:  StoredProcedure [dbo].[Add_BillAssociation]    Script Date: 05/14/2017 10:06:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create proc Register 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15)
--as
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)



--create proc Add_Person 
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,P_AdmissionDate,P_SSN,P_AccountID) values (@Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@AdmissionDate,@SSN,@AccountID)


--create proc Search_Person
--@ID int
--as
--Select *
--from dbo.Person
--where 
--Convert(varchar,P_PersonID) like '%' + @ID + '%'


--create proc Update_Person
--@ID int,
--@Name nvarchar(50),
--@City nvarchar(25),
--@Zip_code int,
--@Birthdate date ,
--@Phone nvarchar(20),
--@E_mail nvarchar(50),
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int

--as
--UPDATE  dbo.Person
--set
--P_Name = @Name ,
--P_city=@City,
--P_ZipCode=@Zip_code,
--P_BirthDate=@Birthdate,
--P_Phone =@Phone,
--P_Email = @E_mail,
--P_AdmissionDate= @AdmissionDate,
--P_SSN =@SSN,
--P_AccountID =@AccountID
--where P_PersonID = @ID






--create proc Add_Patient
--@PersonID int
--as
--insert into dbo.Patient 
--(PA_PersonID) values (@PersonID)


--create proc Search_Patient
--@ID int
--as
--Select*
--from dbo.Patient
--where 
--Convert(varchar,PA_PatientID) like '%' + @ID + '%'


--create proc Update_Patient
--@PatientID int ,
--@PersonID int
--as
--UPDATE  dbo.Patient
--set
--PA_PersonID=@PersonID
--where PA_PatientID= @PatientID



--create proc Add_Rep
--@PersonID int
--as
--insert into dbo.Representative 
--(R_PersonID) values (@PersonID)


--create proc Search_Rep
--@ID int
--as
--Select*
--from dbo.Representative
--where 
--Convert(varchar,R_RepID) like '%' + @ID + '%'


--create proc Update_Rep
--@RepID int ,
--@PersonID int
--as
--UPDATE  dbo.Representative
--set
--R_PersonID=@PersonID
--where R_RepID= @RepID


--create proc Add_Visit
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--insert into dbo.Visit 
--(V_Date , V_Index , V_Priority , V_PatientID) values (@Date , @V_index , @Priority ,@PatientID)


--create proc Update_Visit
--@ID int ,
--@Date date,
--@V_index int,
--@Priority varchar(1),
--@PatientID int 
--as
--UPDATE  dbo.Visit
--set
--V_Date=@Date,
--V_Index=@V_index,
--V_Priority=@Priority,
--V_PatientID=@PatientID
--where V_VisitID= @ID


--create proc Add_Diagnose
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Diagnose 
--(D_Description , D_VisitID) values (@Description , @VisitID)

--create proc Update_Diagnose
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Diagnose
--set
--D_Description=@Description,
--D_VisitID=@VisitID
--where D_VisitID= @ID


--create proc Add_Symptoms
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Symptoms 
--(S_Description , S_VisitID) values (@Description , @VisitID)

--create proc Update_Symptoms
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Symptoms
--set
--S_Description=@Description,
--S_VisitID=@VisitID
--where S_SymptomsID= @ID


	
	
--create proc Add_Treatment
--@Description nvarchar(200),
--@VisitID int
--as
--insert into dbo.Treatment 
--(T_Description , T_Visit) values (@Description , @VisitID)

--    T_TreatmentID int identity(1,1) primary key ,
--	T_Description nvarchar (200),
--	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)

--create proc Update_Treatment
--@ID int ,
--@Description nvarchar(200),
--@VisitID int
--as
--UPDATE  dbo.Treatment
--set
--T_Description=@Description,
--T_Visit=@VisitID
--where T_TreatmentID= @ID


--B_BillID int identity(1,1) primary key ,
--B_Cost int ,
--B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)


--create proc Add_Billing
--@Cost int,
--@VisitID int
--as
--insert into dbo.Billing 
--(B_Cost , B_VisitID) values (@Cost , @VisitID)


--create proc Update_Billing
--@ID int ,
--@Cost int,
--@VisitID int
--as
--UPDATE  dbo.Billing
--set
--B_Cost=@Cost,
--B_VisitID=@VisitID
--where B_BillID= @ID


--create table SYM_Item 
--(
--	SI_SysItem int identity(1,1) primary key ,
--	SI_Name nvarchar(50),
--	SI_Description  nvarchar(100),
--)


--create proc Add_SYMItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.SYM_Item 
--(SI_Name , SI_Description) values (@Name ,@Description )


--create proc Search_SYSItem
--@ID int
--as
--Select*
--from dbo.SYM_Item
--where 
--Convert(varchar,SI_SysItem) like '%' + @ID + '%'


--create proc Update_SYSItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.SYM_Item
--set
--SI_Name=@Name,
--SI_Description = @Description
--where SI_SysItem= @ID

--create proc Add_TreatItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--insert into dbo.TreatItem 
--(TI_Name , TI_Description , TI_RepID) values (@Name ,@Description,@RepID )


--create proc Search_TreatItem
--@ID int
--as
--Select*
--from dbo.TreatItem
--where 
--Convert(varchar,TI_TreatItemID) like '%' + @ID + '%'


--create proc Update_TreatItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@RepID int
--as
--UPDATE  dbo.TreatItem
--set
--TI_Name=@Name,
--TI_Description = @Description,
--TI_RepID = @RepID
--where TI_TreatItemID= @ID

	--DI_DiagItemID int identity(1,1) primary key,
	--DI_Description nvarchar(100),
	--DI_Name nvarchar(50)
	

--create proc Add_DangItem
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--insert into dbo.DiagItem 
--(DI_Name , DI_Description) values (@Name ,@Description )


--create proc Search_DangItem
--@ID int
--as
--Select*
--from dbo.DiagItem
--where 
--Convert(varchar,DI_DiagItemID) like '%' + @ID + '%'


--create proc Update_DangItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100)
--as
--UPDATE  dbo.DiagItem
--set
--DI_Name=@Name,
--DI_Description = @Description
--where DI_DiagItemID= @ID

	
	
--create proc Add_BillingItem
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--insert into dbo.BillingItem
--(BI_Name , BI_Description , BI_UnitCost) values (@Name ,@Description ,@Cost)


--create proc Search_BillingItem
--@ID int
--as
--Select*
--from dbo.BillingItem
--where 
--Convert(varchar,BI_BillItemID) like '%' + @ID + '%'


--create proc Update_BillingItem
--@ID int ,
--@Name nvarchar(50),
--@Description nvarchar(100),
--@Cost int
--as
--UPDATE  dbo.BillingItem
--set
--BI_Name=@Name,
--BI_Description = @Description,
--BI_UnitCost=@Cost
--where BI_BillItemID= @ID


--create proc Add_SysAssociation
--@SymID int ,
--@SysItemID int 
--as
--insert into dbo.Symptoms_Association
--(SA_Symptoms , SA_SymItemID ) values (@SymID ,@SysItemID )


--create proc Delete_SysAssociation
--@SysID int 
--as
--delete from dbo.Symptoms_Association
--where Convert(varchar,SA_Symptoms) = @SysID

	
--create proc Add_DiagAssociation
--@DiagID int ,
--@DiagItemID int 
--as
--insert into dbo.DiagnoseAssociation
--(DA_DiagnoseID , DA_DiagItemID ) values (@DiagID ,@DiagItemID )


--create proc Delete_DiagAssociation
--@DiagID int 
--as
--delete from dbo.DiagnoseAssociation
--where Convert(varchar,DA_DiagnoseID) = @DiagID


--create proc Add_TreatAssociation
--@TreamID int ,
--@TreatItemID int 
--as
--insert into dbo.TreatmentAssociation
--(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID

	--BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	--BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)

create proc [dbo].[Add_BillAssociation]
@BillID int ,
@BillItemID int 
as
insert into dbo.BillingAssociation
(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


--create proc Delete_TreatAssociation
--@TreamID int 
--as
--delete from dbo.TreatmentAssociation
--where Convert(varchar,TA_TreatmentID) =@TreamID
GO
/****** Object:  Check [CHK_Type]    Script Date: 05/14/2017 10:06:32 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [CHK_Type] CHECK  (([A_AccountType]='Doctor' OR [A_AccountType]='Nurse' OR [A_AccountType]='Patient' OR [A_AccountType]='Representative'))
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [CHK_Type]
GO
/****** Object:  Check [CHK_Priority]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [CHK_Priority] CHECK  (([V_Priority]='A' OR [V_Priority]='B' OR [V_Priority]='C'))
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [CHK_Priority]
GO
/****** Object:  ForeignKey [FK__Person__P_Accoun__060DEAE8]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([P_AccountID])
REFERENCES [dbo].[Account] ([A_AccountID])
GO
/****** Object:  ForeignKey [FK__Patient__PA_Pers__0AD2A005]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD FOREIGN KEY([PA_PersonID])
REFERENCES [dbo].[Person] ([P_PersonID])
GO
/****** Object:  ForeignKey [FK__Represent__R_Per__0F975522]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Representative]  WITH CHECK ADD FOREIGN KEY([R_PersonID])
REFERENCES [dbo].[Person] ([P_PersonID])
GO
/****** Object:  ForeignKey [FK__Visit__V_Patient__1A14E395]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK__Visit__V_Patient__1A14E395] FOREIGN KEY([V_PatientID])
REFERENCES [dbo].[Patient] ([PA_PatientID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK__Visit__V_Patient__1A14E395]
GO
/****** Object:  ForeignKey [FK__TreatItem__TI_Re__403A8C7D]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[TreatItem]  WITH CHECK ADD FOREIGN KEY([TI_RepID])
REFERENCES [dbo].[Representative] ([R_RepID])
GO
/****** Object:  ForeignKey [FK__PaymentIN__PAY_P__145C0A3F]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[PaymentINFO]  WITH CHECK ADD FOREIGN KEY([PAY_PatientID])
REFERENCES [dbo].[Patient] ([PA_PatientID])
GO
/****** Object:  ForeignKey [FK__Billing__B_Visit__4AB81AF0]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK__Billing__B_Visit__4AB81AF0] FOREIGN KEY([B_VisitID])
REFERENCES [dbo].[Visit] ([V_VisitID])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK__Billing__B_Visit__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__Diagnose__D_Visi__2D27B809]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Diagnose]  WITH CHECK ADD  CONSTRAINT [FK__Diagnose__D_Visi__2D27B809] FOREIGN KEY([D_VisitID])
REFERENCES [dbo].[Visit] ([V_VisitID])
GO
ALTER TABLE [dbo].[Diagnose] CHECK CONSTRAINT [FK__Diagnose__D_Visi__2D27B809]
GO
/****** Object:  ForeignKey [FK__Symptoms__S_Visi__1ED998B2]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Symptoms]  WITH CHECK ADD  CONSTRAINT [FK__Symptoms__S_Visi__1ED998B2] FOREIGN KEY([S_VisitID])
REFERENCES [dbo].[Visit] ([V_VisitID])
GO
ALTER TABLE [dbo].[Symptoms] CHECK CONSTRAINT [FK__Symptoms__S_Visi__1ED998B2]
GO
/****** Object:  ForeignKey [FK__Treatment__T_Vis__3B75D760]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK__Treatment__T_Vis__3B75D760] FOREIGN KEY([T_Visit])
REFERENCES [dbo].[Visit] ([V_VisitID])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK__Treatment__T_Vis__3B75D760]
GO
/****** Object:  ForeignKey [FK__Treatment__TA_Tr__44FF419A]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[TreatmentAssociation]  WITH CHECK ADD FOREIGN KEY([TA_TreatmentID])
REFERENCES [dbo].[Treatment] ([T_TreatmentID])
GO
/****** Object:  ForeignKey [FK__Treatment__TA_Tr__45F365D3]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[TreatmentAssociation]  WITH CHECK ADD FOREIGN KEY([TA_TreatItemID])
REFERENCES [dbo].[TreatItem] ([TI_TreatItemID])
GO
/****** Object:  ForeignKey [FK__Symptoms___SA_Sy__276EDEB3]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Symptoms_Association]  WITH CHECK ADD FOREIGN KEY([SA_Symptoms])
REFERENCES [dbo].[Symptoms] ([S_SymptomsID])
GO
/****** Object:  ForeignKey [FK__Symptoms___SA_Sy__286302EC]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[Symptoms_Association]  WITH CHECK ADD FOREIGN KEY([SA_SymItemID])
REFERENCES [dbo].[SYM_Item] ([SI_SysItem])
GO
/****** Object:  ForeignKey [FK__BillingAs__BA_Bi__534D60F1]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[BillingAssociation]  WITH CHECK ADD FOREIGN KEY([BA_BillingID])
REFERENCES [dbo].[Billing] ([B_BillID])
GO
/****** Object:  ForeignKey [FK__BillingAs__BA_Bi__5441852A]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[BillingAssociation]  WITH CHECK ADD FOREIGN KEY([BA_BillItemID])
REFERENCES [dbo].[BillingItem] ([BI_BillItemID])
GO
/****** Object:  ForeignKey [FK__DiagnoseA__DA_Di__35BCFE0A]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[DiagnoseAssociation]  WITH CHECK ADD FOREIGN KEY([DA_DiagnoseID])
REFERENCES [dbo].[Diagnose] ([D_DiagnoseID])
GO
/****** Object:  ForeignKey [FK__DiagnoseA__DA_Di__36B12243]    Script Date: 05/14/2017 10:06:33 ******/
ALTER TABLE [dbo].[DiagnoseAssociation]  WITH CHECK ADD  CONSTRAINT [FK__DiagnoseA__DA_Di__36B12243] FOREIGN KEY([DA_DiagItemID])
REFERENCES [dbo].[DiagItem] ([DI_DiagItemID])
GO
ALTER TABLE [dbo].[DiagnoseAssociation] CHECK CONSTRAINT [FK__DiagnoseA__DA_Di__36B12243]
GO
