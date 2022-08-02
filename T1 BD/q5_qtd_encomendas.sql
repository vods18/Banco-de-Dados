select n_name, count(c_nationkey) 
from nation 
join customer on c_nationkey=n_nationkey 
group by n_name 
order by count(c_nationkey) desc;