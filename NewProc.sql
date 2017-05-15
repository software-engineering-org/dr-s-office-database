

create proc searchPatientbyPersonName
@Name varchar(50)
as
SELECT 
pa.PA_PatientID,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
FROM dbo.Person p inner join dbo.Patient pa
on p.P_Name = @Name

create proc search_Sym_item_byName
@Name varchar(50)
as
select * from SYM_Item
where SYM_Item.SI_Name=@Name

create proc search_treat_item_byName
@Name varchar(50)
as
select * from TreatItem
where TreatItem.TI_Name =@Name




create proc search_dia_item_byName
@Name varchar(50)
as
select * from dbo.DiagItem
where DiagItem.DI_Name =@Name


create proc search_bill_item_byName
@Name varchar(50)
as
select * from dbo.BillingItem
where BillingItem.BI_Name =@Name


create proc getPatientbyPatientID
@ID int
as
SELECT
pa.PA_PatientID,p.P_Name,p.P_AdmissionDate,p.P_Phone,p.P_ZipCode,p.P_Email,p.P_Image,p.P_SSN,p.P_ZipCode,p.P_city
FROM dbo.Person p inner join dbo.Patient pa

on PA.PA_PatientID = @ID



create proc search_Sym_item_byID
@ID int
as
select * from SYM_Item
where SYM_Item.SI_SysItem = @ID

create proc search_treat_item_byID
@ID int
as
select * from TreatItem
where TreatItem.TI_TreatItemID = @ID




create proc search_dia_item_byID
@ID int 
as
select * from dbo.DiagItem
where DiagItem.DI_DiagItemID=@ID


create proc search_bill_item_byID
@ID int
as
select * from dbo.BillingItem
where BillingItem.BI_BillItemID=@ID
