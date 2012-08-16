alter table ACT_HI_PROCVARIABLE
drop column EXECUTION_ID_;

alter table ACT_HI_PROCVARIABLE
drop column TASK_ID_;

alter table ACT_HI_PROCVARIABLE
drop column ACT_INST_ID_;

alter table ACT_HI_PROCVARIABLE
drop column ACT_INST_ID_;

alter table ACT_HI_PROCVARIABLE
drop column TIME_;

alter table ACT_RE_PROCDEF 
    MODIFY VERSION_ integer not null;
    
alter table ACT_RU_EXECUTION
    add constraint ACT_FK_EXE_PROCDEF 
    foreign key (PROC_DEF_ID_) 
    references ACT_RE_PROCDEF (ID_); 

alter table ACT_HI_DETAIL
	MODIFY PROC_INST_ID_ varchar(64) null;

alter table ACT_HI_DETAIL
	MODIFY EXECUTION_ID_ varchar(64) null;