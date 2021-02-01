﻿CREATE TABLE [dbo].[QRTZ_TRIGGERS] (
    [SCHED_NAME]     NVARCHAR (120)  NOT NULL,
    [TRIGGER_NAME]   NVARCHAR (150)  NOT NULL,
    [TRIGGER_GROUP]  NVARCHAR (150)  NOT NULL,
    [JOB_NAME]       NVARCHAR (150)  NOT NULL,
    [JOB_GROUP]      NVARCHAR (150)  NOT NULL,
    [DESCRIPTION]    NVARCHAR (250)  NULL,
    [NEXT_FIRE_TIME] BIGINT          NULL,
    [PREV_FIRE_TIME] BIGINT          NULL,
    [PRIORITY]       INT             NULL,
    [TRIGGER_STATE]  NVARCHAR (16)   NOT NULL,
    [TRIGGER_TYPE]   NVARCHAR (8)    NOT NULL,
    [START_TIME]     BIGINT          NOT NULL,
    [END_TIME]       BIGINT          NULL,
    [CALENDAR_NAME]  NVARCHAR (200)  NULL,
    [MISFIRE_INSTR]  INT             NULL,
    [JOB_DATA]       VARBINARY (MAX) NULL,
    CONSTRAINT [PK_QRTZ_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME] ASC, [TRIGGER_NAME] ASC, [TRIGGER_GROUP] ASC)
);

