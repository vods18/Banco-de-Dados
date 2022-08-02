select n_name, sum(l_quantity) 
from lineitem, customer, nation 
join orders on l_orderkey=o_orderkey and o_custkey=c_custkey and c_nationkey=n_nationkey 
group by n_name 
order by sum(l_quantity) 
desc limit 10;