select n_name, sum(l_quantity) as total
from lineitem, customer, nation
join orders on l_orderkey=o_orderkey
and o_custkey=c_custkey
and c_nationkey=n_nationkey
group by n_name having sum(l_quantity)>62000 
order by sum(l_quantity)
desc;