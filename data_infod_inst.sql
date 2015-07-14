select a.año,a.institucion,a.know_infod,b.interop_tram,c.conx_dinardap,
d.mn_proc_infod,e.infod_norm_inst,f.virt_tram,g.plan_less_tram,
h.conx_ws,i.conx_pweb

from

(SELECT	EXTRACT(YEAR FROM f.fii_fecha)::numeric as año,
	f.fii_fecha as fecha,
	dt.ins_sk,
	dt.ins_nombre as institucion,
	f.fii_valor as know_infod
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'KNOW.INFOD')a
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as interop_tram
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'INTEROP.TRAM')b
ON	(b.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as conx_dinardap
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'CONX.DINARDAP')c
ON	(c.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as mn_proc_infod
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'MN.PROC.INFOD')d
ON	(d.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as infod_norm_inst
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'INFOD.NORM.INST')e
ON	(e.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as virt_tram
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'VIRT.TRAM')f
ON	(f.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as plan_less_tram
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'PLAN.LESS.TRAM')g
ON	(g.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as conx_ws
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'CONX.WS')h
ON	(h.ins_sk = a.ins_sk)
JOIN
(SELECT	f.fii_fecha as fecha,
	dt.ins_sk,
	f.fii_valor as conx_pweb
FROM 	"INST".dim_indicador_inst di,
	"INST".dim_institucion dt,
	"INST".fact_indicador_ins f
WHERE	f.fii_iin_sk = di.iin_sk
AND	f.fii_ins_sk = dt.ins_sk	
AND	di.iin_codigo = 'CONX.PWEB')i
ON	(i.ins_sk = a.ins_sk)
















