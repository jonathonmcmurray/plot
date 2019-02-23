\l p.q
\d .matplotlib
isroutine:.p.import[`inspect;`:isroutine];
getmembers:.p.import[`inspect;`:getmembers];
wrapm:{[x]
 names:getmembers[x;isroutine]`;
 res:``_pyobj!((::);x);
 res,:(`$names[;0])!{.p.wrap x 1}each names;
 res}
mpuse:.p.import[`matplotlib;`:use];
if[not `qpk in key`;mpuse"Agg"];  //use Agg backend when not in jupyter notebook
pyplot:{wrapm .p.import`matplotlib.pyplot}

\d .


