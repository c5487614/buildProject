drop table if exists Info;

drop table if exists InfoDetail;

drop table if exists OldBuilding;

drop table if exists User;

/*==============================================================*/
/* Table: Info                                                  */
/*==============================================================*/
create table Info
(
   InfoId               varchar(32) not null,
   BuildId              int,
   BuildName            varchar(64),
   UserId               int,
   UserName             varchar(32),
   CreateDate           datetime,
   Weather              varchar(32),
   Temprature           varchar(32),
   Level                varchar(32),
   primary key (InfoId)
);

/*==============================================================*/
/* Table: InfoDetail                                            */
/*==============================================================*/
create table InfoDetail
(
   InfoId               varchar(32) not null,
   DetailId             varchar(32) not null,
   InfoType             varchar(8),
   InfoData             blob,
   InfoDataURL          varchar(256),
   primary key (InfoId, DetailId)
);

/*==============================================================*/
/* Table: OldBuilding                                           */
/*==============================================================*/
create table OldBuilding
(
   BuildId              int not null,
   Name                 varchar(64),
   ProtectLevel         varchar(32),
   ContactName          varchar(32),
   ContactNum           varchar(32),
   BuildDesc            longblob,
   Longitude            numeric(10,6),
   Latitude             numeric(10,6),
   District             varchar(64),
   primary key (BuildId)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   UserId               int not null,
   UserName             varchar(32),
   UserPassword         varchar(32),
   UserType             varchar(32),
   UserTypeName         varchar(64),
   UserDept             varchar(64),
   BuildId              int,
   primary key (UserId)
);
