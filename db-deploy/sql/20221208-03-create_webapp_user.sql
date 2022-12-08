/****** Object:  User [dso_app_login]    Script Date: 12/8/2022 2:19:17 PM ******/
CREATE USER [dso_app_login] FOR LOGIN [dso_app_login] WITH DEFAULT_SCHEMA=[weather_station]
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'dso_app_login'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'dso_app_login'
GO
