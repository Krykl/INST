select	*, 
	round((log(conx_ws+1) /
		(select max(log(conx_ws+1)) from "INST".vdata_infod_inst ))::numeric,4) as log_conx_ws,

	round((log(conx_pweb+1) /
		(select max(log(conx_pweb+1)) from "INST".vdata_infod_inst ))::numeric,4) as log_conx_pweb

 from	"INST".vdata_infod_inst

