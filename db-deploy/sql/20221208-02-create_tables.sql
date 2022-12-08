/****** Object:  Table [weather_station].[temperature_records]    Script Date: 12/8/2022 2:19:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [weather_station].[temperature_records](
	[record_id] [uniqueidentifier] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[weather_device_id] [varchar](100) NOT NULL,
	[read_time] [datetime2](7) NOT NULL,
	[temperaturef] [float] NOT NULL,
	[temperaturec] [float] NOT NULL,
	[humidity] [float] NOT NULL,
	[gps_device_id] [varchar](100) NOT NULL,
	[lat] [varchar](25) NOT NULL,
	[lon] [varchar](25) NOT NULL,
 CONSTRAINT [temp_record_pk] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [weather_station].[temperature_records] ADD  DEFAULT (newid()) FOR [record_id]
GO

