# This enumerates the orbit of the sporadic simple Harada-Norton group (HN)
# on the cosets of its first maximal subgroup. The orbit contains
# 1140000 points and uses about 221 MB of main memory.
# A non-parallel orbit algorithm takes about 41 seconds.

LoadPackage("orb");

Read("HNdata.g");  # actually reads HNdata.g.gz

# Now enumerate the orbit of v under the action of the group generated
# by gens with "OnRight" as action function.
# The following works on my machine and uses about 41 seconds and
# 221 MB main memory:

start := Runtime();
o := Orb(gens,v,OnRight,rec(treehashsize := 3000000,report := 100000));
Enumerate(o);
t := Runtime()-start;
Print("Runtime [ms]:",t,"\n");
