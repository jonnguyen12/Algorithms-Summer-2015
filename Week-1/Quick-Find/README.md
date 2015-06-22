#Quick Find 
##Data structure
Integer array of size N, lets say id[]

We say that element p and q are connected if they have the same id.

How do we find them? Check if p and q have the same id

Union? To merge components containing p and q, change all entries, whose id equals id[p] to id[q]

See QuickFindUF in Java and Swift.

