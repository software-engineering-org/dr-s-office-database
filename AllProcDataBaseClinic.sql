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
--@image image,
--@AdmissionDate date ,
--@SSN int ,
--@AccountID int
--as
--insert into dbo.Person 
--(P_Name,P_city,P_ZipCode ,P_BirthDate,P_Phone,P_Email,


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
-- * paramters *
--@PersonID int 
--as
-- * Query , work *
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


--create proc Update_DiagItem
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


----create proc Add_TreatAssociation
----@TreamID int ,
----@TreatItemID int 
----as
----insert into dbo.TreatmentAssociation
----(TA_TreatmentID , TA_TreatItemID ) values (@TreamID ,@TreatItemID )


----create proc Delete_TreatAssociation
----@TreamID int 
----as
----delete from dbo.TreatmentAssociation
----where Convert(varchar,TA_TreatmentID) =@TreamID


----create proc Add_BillAssociation
----@BillID int ,
----@BillItemID int 
----as
----insert into dbo.BillingAssociation
----(BA_BillingID , BA_BillItemID ) values (@BillID ,@BillItemID )


----create proc Delete_BillAssociation
----@BillID int 
----as
----delete from dbo.BillingAssociation
----where Convert(varchar,BA_BillingID) =@BillID


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



--Register 'a','bbbb',1,'2008-1-1','asd','asdasd',null,'2008-2-1',5,'asd','asd','Doctor'
----komyyyyyyyyyyy


--create proc Register
--@Name            nvarchar(50),
--@City            nvarchar(25),
--@Zip_code        int,
--@Birthdate       date, 
--@Phone           nvarchar(20),
--@E_mail          nvarchar(50),
--@Image           image,
--@AdmissionDate   date, 
--@SSN             int ,

--@UserName nvarchar(50),
--@Password  nvarchar(50),
--@Type  varchar(15)
--as 

--begin
--declare @temp int
--execute Create_Account @UserName ,@Password ,@Type ,@temp output
--execute Add_Person @Name,@City,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@temp
--end

--Add_Patient 'Ahmed' , 'Tanta' ,31111 , '2009-1-1' ,'01147695396','Salvano234@gmail.com',null,'2017-5-1',1,1
----create proc Add_Patient
----@Name            nvarchar(50),
----@City            nvarchar(25),
----@Zip_code        int,
----@Birthdate       date, 
----@Phone           nvarchar(20),
----@E_mail          nvarchar(50),
----@Image           image,
----@AdmissionDate   date, 
----@SSN             int ,
----@AccountID       int
----as
----begin
----declare @temp int
----execute Add_PersonReturnID @Name ,@City ,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID,@temp output
----insert into dbo.Patient (PA_PersonID)values(@temp)
----end;

----create proc Add_Rep
----@Name            nvarchar(50),
----@City            nvarchar(25),
----@Zip_code        int,
----@Birthdate       date, 
----@Phone           nvarchar(20),
----@E_mail          nvarchar(50),
----@Image           image,
----@AdmissionDate   date, 
----@SSN             int ,
----@AccountID       int
----as
----begin
----declare @temp int
----execute Add_PersonReturnID @Name ,@City ,@Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID,@temp output
----insert into dbo.Representative(R_PersonID)values(@temp)
----end;

--Add_rep 'Ahmed' , 'Tanta' ,31111 , '2009-1-1' ,'01147695396','Salvano234@gmail.com',null,'2017-5-1',1,1



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

--create proc PatientInfo
--as
--SELECT
--p.P_Name , v.V_Date , di.D_Name,di.D_Description ,tr.T_Name ,tr.T_Description ,sy.S_Name ,sy.S_Description , b.B_Cost
--FROM dbo.Person p inner join dbo.Patient pa
--on
--p.P_PersonID = pa.PA_PersonID
--inner join dbo.Visit v
--on pa.PA_PatientID = v.V_PatientID
--inner join dbo.Diagnose di
--on v.V_VisitID = di.D_VisitID
--inner join dbo.Treatment tr
--on v.V_VisitID = tr.T_Visit
--inner join dbo.Symptoms sy
--on v.V_VisitID = sy.S_VisitID 
--inner join dbo.Billing b
--on v.V_VisitID = b.B_VisitID

--USE [clinic]
--GO
--/****** Object:  StoredProcedure [dbo].[Create_Account]    Script Date: 05/13/2017 23:13:02 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--ALTER proc [dbo].[Create_Account] 
--@UserName nvarchar(25),
--@Password nvarchar(25),
--@Type varchar(15),
--@ret_Id int out 
--as
--begin
--insert into dbo.Account 
--(A_UserName,A_Password ,A_AccountType) values (@UserName,@Password,@Type)
--select @ret_Id = SCOPE_IDENTITY();
--end ;

--create proc Add_PersonReturnID
--@Name            nvarchar(50),
--@City            nvarchar(25),
--@Zip_code        int,
--@Birthdate       date, 
--@Phone           nvarchar(20),
--@E_mail          nvarchar(50),
--@Image           image,
--@AdmissionDate   date, 
--@SSN             int ,
--@AccountID     int ,
--@ret_ID  int out 
--as
--begin 
--insert into dbo.Person (P_Name,P_city,P_ZipCode,P_BirthDate,P_Phone,P_Email,P_Image,P_AdmissionDate,P_SSN,P_AccountID)values(@Name, @City, @Zip_code,@Birthdate,@Phone,@E_mail,@Image,@AdmissionDate,@SSN,@AccountID)
--select @ret_ID =SCOPE_IDENTITY();
--end;
