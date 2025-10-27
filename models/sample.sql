Select 
 c.c_custkey,
 c.c_name,
 c.c_nationkey as nation,
 sum(o.o_totalprice) as totPrice
From SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER c
Left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o
on c.c_custkey = o.o_custkey
Group by  c.c_custkey,
 c.c_name,
 c.c_nationkey 
 having sum(o.o_totalprice)>0