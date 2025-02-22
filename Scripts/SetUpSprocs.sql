USE [EmployeeDB]
 GO
 SET ANSI_NULLS ON
 GO
 SET QUOTED_IDENTIFIER ON
 GO
 CREATE TABLE [dbo].[EmployeeRecord](
     [ID] [int] IDENTITY(1,1) NOT NULL,
     [Name] nvarchar NULL,
     [Email] nvarchar NULL
 ) ON [PRIMARY]
 GO

 USE [EmployeeDB]
 GO
 SET ANSI_NULLS ON
 GO
 SET QUOTED_IDENTIFIER ON
 GO
 CREATE PROCEDURE [dbo].[InsertEmployee] 
     @Name nvarchar(50),
     @Email nvarchar(50)
 AS
 BEGIN
     SET NOCOUNT ON;
     INSERT INTO EmployeeRecord VALUES(@Name, @Email)   
 END

 USE [EmployeeDB]
 GO
 SET ANSI_NULLS ON
 GO
 SET QUOTED_IDENTIFIER ON
 GO
 Create PROCEDURE [dbo].[SelectEmployee] 
 AS
 BEGIN
 
SET NOCOUNT ON; Select * FROm EmployeeRecord  

 END

 USE [EmployeeDB]
 GO

 SET ANSI_NULLS ON
 GO
 SET QUOTED_IDENTIFIER ON
 GO
 CREATE PROCEDURE [dbo].[UpdateEmployee] 
     @ID int ,
     @Name nvarchar(50),
     @Email nvarchar(50)
 AS
 BEGIN
     SET NOCOUNT ON;
     Update EmployeeRecord set Name = @Name , Email = @Email WHERE ID = @ID   
 END

 USE [EmployeeDB]
 GO
 SET ANSI_NULLS ON
 GO
 SET QUOTED_IDENTIFIER ON
 GO
 CREATE PROCEDURE [dbo].[DeleteEmployee] 
     @ID int 
 AS
 BEGIN
     SET NOCOUNT ON;
     Delete From EmployeeRecord  WHERE ID = @ID   
 END
