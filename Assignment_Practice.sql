Question a:

select model
from PC
where speed>=3.00;

Question b:

select maker
from Product p, Laptop l
where (p.model=l.model) and (hd>=100);

Question c:

select model, price
from Product pr, PC pc 
where (pr.model=pc.model) and (maker='B')
UNION
select model, price
from Product pr, Laptop l 
where (pr.model=l.model) and (maker='B')
UNION
select model, price
from Product pr, Printer pri 
where (pr.model=pri.model) and (maker='B');

Quesion d:

select model
from Printer
where type='laser' and color=true;

Question e;

select maker
from Product
where type='laptop'
MINUS
select maker
from Product 
where type='PC';

Question f:
 
select pc1.hd
from PC pc1, PC pc2
where (pc1.hd=pc2.hd) and (pc.model<>pc2.model);

Question g:

select pc1.model,pc2.model
from PC pc1, PC pc2
where (pc1.speen=pc2.speed) and (pc1.ram=pc2.ram) and (pc1.model<pc2.model);
