-- создание таблицы людей
create table PEOPLES
(
  id_people         NUMBER not null,
  surname_people    VARCHAR2(100),
  name_people       VARCHAR2(100),
  third_name_people VARCHAR2(100),
  date_birth_people DATE,
  date_added_people DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table PEOPLES
  add constraint UK_PEOPLE_ID unique (ID_PEOPLE)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
-- создание таблицы справок
create table REFERENCES
(
  id_reference NUMBER,
  name         VARCHAR2(100),
  date_added   DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table REFERENCES
  add constraint UK_REFERENCE_ID unique (ID_REFERENCE)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

-- создание таблицы справок людей
create table PEOPLE_REFERENCES
(
  id_people_references NUMBER not null,
  id_people            NUMBER not null,
  id_reference         NUMBER not null,
  date_added           DATE not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table PEOPLE_REFERENCES
  add constraint UK_PEOPLE_REFERENCES_ID unique (ID_PEOPLE_REFERENCES)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PEOPLE_REFERENCES
  add constraint FK_PEOPLE_REFERENCES_ID_PEOPLE foreign key (ID_PEOPLE)
  references PEOPLES (ID_PEOPLE);
alter table PEOPLE_REFERENCES
  add constraint FK_PEOPLE_REFERENCES_ID_REFER foreign key (ID_REFERENCE)
  references REFERENCES (ID_REFERENCE);

  
