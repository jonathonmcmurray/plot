/from https://github.com/KxSystems/embedPy/blob/master/tests/matplotlib.t
if[count r:@[read0;`$.p.import[`sys;`:exec_prefix;`],"/qt.conf";""];.p.import[`os;`:putenv;`QT_PLUGIN_PATH;(trim(1+r?"=")_ r:first r where r like"Prefix*"),"/plugins"]]

\d .plt

line:{[sh;file;x;y;title;xlabel;ylabel;grid]
  plt:.matplotlib.pyplot[];                                                         //get pyplot object
  plt[`title]title;                                                                 //set title
  plt[`xlabel]xlabel;                                                               //set xlabel
  plt[`ylabel]ylabel;                                                               //set ylabel
  plt[`plot][x;y];                                                                  //plot line graph
  grid:$[null grid;0b;grid];                                                        //if grid not in args, will be null
  if[grid;plt[`grid]1b];                                                            //add grid if required
  if[sh;plt[`show][]];                                                              //show if to be shown
  if[not sh;plt[`savefig]file];                                                     //save to file if to be saved
 }

pie:{[sh;file;labels;sizes;title]
  plt:.matplotlib.pyplot[];                                                         //get pyplot object
  plt[`title]title;                                                                 //set title
  plt[`pie][sizes;pykwargs `labels`startangle!(labels;90)];                         //plot pie chart
  if[sh;plt[`show][]];                                                              //show if to be shown
  if[not sh;plt[`savefig]file];                                                     //save to file if to be saved
 }

\d .

plot0:{[s;x]
  if[99h<>type x;'`type];                                                           //require dict
  if[not x[`plot]in key .plt;'"unknown plot"];                                      //make sure we know how to plot
  .[f;s,value(1_value[f:.plt x`plot]1)#x];                                          //pass necessary params to plot function
 }
plot:plot0[1b];
plottofile:plot0[0b];