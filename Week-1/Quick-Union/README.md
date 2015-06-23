#Quick Union [lazy approach] 

##Data structure

* Integer array of id[] of length N.
* Interpretation: id[i] is parent of i.
* Root of i is id[id[id[...id[i]...]]].


##Find
Check if p and q have the same root.

##Union
To merge components containing p and q, set the id of p's root to the id of q's root.

##Cost
####Cost Model
The number of array accesses (for read and write)

Algorithm | Init | Union | Find
----------|------|-------|-----
Quick-Find| N    |   N   |  1
Quick-Union| N | N | N

####Quick-find Defect
* Union too expensive (N array accesses)
* Trees are flat but too exspensive to keep them flat.

####Quick-Union Defect
* Trees can get tall.
* Find too expensive (could be N array accesses)
