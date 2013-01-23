
-----------------------------------------------
-- Additional index on PROC_INST_ID_ and ACT_ID_ for historic activity

create index ACT_IDX_HI_ACT_INST_PROCINST on ACT_HI_ACTINST(PROC_INST_ID_, ACT_ID_);
