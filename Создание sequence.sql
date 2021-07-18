-- создание sequence PEOPLES
create sequence SQ_PEOPLE
minvalue 1
maxvalue 9999999999999999999999999999
start with 4
increment by 1
cache 20;

-- Create sequence REFERENCE
create sequence SQ_REFERENCE
minvalue 1
maxvalue 9999999999999999999999999999
start with 7
increment by 1
cache 20;

-- создание sequence PEOPLE_REFERENCES 
create sequence SQ_PEOPLE_REFERENCES
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;
