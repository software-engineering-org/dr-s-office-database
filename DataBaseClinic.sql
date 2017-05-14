--create database clinic
create table Account 
(
	A_AccountID int identity(1,1) primary key ,
	A_UserName nvarchar(25),
	A_Password nvarchar(25),
	A_AccountType varchar(15)
	CONSTRAINT CHK_Type  CHECK (A_AccountType = 'Doctor' or A_AccountType = 'Nurse' or A_AccountType = 'Patient' or A_AccountType = 'Representative' )
	)

create table Person 
(
	P_PersonID int identity(1,1) primary key ,
	P_Name nvarchar (50),
	P_city nvarchar(50),
	P_ZipCode int ,
	P_BirthDate date ,
	P_Phone nvarchar(20),
	P_Email nvarchar(50),
	P_AdmissionDate date ,
	P_SSN int ,
	P_AccountID int FOREIGN KEY REFERENCES Account(A_AccountID)	 
)


create table Patient 
(
	PA_PatientID int identity(1,1) primary key,
	PA_PersonID int FOREIGN KEY REFERENCES Person(P_PersonID),
)
create table Representative
(
	R_RepID int identity(1,1) primary key ,
	R_PersonID int FOREIGN KEY REFERENCES Person(P_PersonID)
)

create table PaymentINFO
(
	PAY_InfoID int identity(1,1) primary key ,
	PAY_CardNumber int,
	PAY_ExpirationDate date,
	PAY_Security int,
	PAY_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)
)

create table Visit
(
	V_VisitID int identity(1,1) primary key ,
	V_Date date ,
	V_Index int ,
	V_Priority varchar(1),
	CONSTRAINT CHK_Priority  CHECK (V_Priority = 'A' or V_Priority = 'B' or V_Priority = 'C'),
	V_PatientID int FOREIGN KEY REFERENCES Patient(PA_PatientID)
);

create table Symptoms
(
	S_SymptomsID int identity(1,1) primary key ,
	S_Description nvarchar(200) ,
	S_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)
)

create table SYM_Item 
(
	SI_SysItem int identity(1,1) primary key ,
	SI_Name nvarchar(50),
	SI_Description  nvarchar(100),
)

create table Symptoms_Association
(
	SA_Symptoms int primary key FOREIGN KEY REFERENCES Symptoms(S_SymptomsID),
	SA_SymItemID int FOREIGN KEY REFERENCES SYM_Item(SI_SysItem)
)

create table Diagnose 
(
	D_DiagnoseID int identity(1,1) primary key ,
	D_Description nvarchar (200),
	D_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)
)

create table DiagItem 
(
	DI_DiagItemID int identity(1,1) primary key,
	DI_Description nvarchar(100)
)

create table DiagnoseAssociation
(
	DA_DiagnoseID int primary key  FOREIGN KEY REFERENCES Diagnose(D_DiagnoseID),
	DA_DiagItemID int FOREIGN KEY REFERENCES DiagItem(DI_DiagItemID)
	
)

create table Treatment
(
	T_TreatmentID int identity(1,1) primary key ,
	T_Description nvarchar (200),
	T_Visit int FOREIGN KEY REFERENCES Visit(V_VisitID)
)

create table TreatItem
(
	TI_TreatItemID int identity(1,1) primary key ,
	TI_Description nvarchar(200) ,
	TI_RepID int FOREIGN KEY REFERENCES Representative(R_RepID)
)

create table TreatmentAssociation
(
	TA_TreatmentID int primary key FOREIGN KEY REFERENCES Treatment(T_TreatmentID),
	TA_TreatItemID int FOREIGN KEY REFERENCES TreatItem(TI_TreatItemID)
)

create table Billing 
(
	B_BillID int identity(1,1) primary key ,
	B_Cost int ,
	B_VisitID int FOREIGN KEY REFERENCES Visit(V_VisitID)
)

create table BillingItem
(
	BI_BillItemID int identity(1,1) primary key ,
	BI_Description nvarchar(100),
	BI_UnitCost int,
)
create table BillingAssociation
(
	BA_BillingID int primary key FOREIGN KEY REFERENCES Billing(B_BillID),
	BA_BillItemID int FOREIGN KEY REFERENCES BillingItem(BI_BillItemID)
)
