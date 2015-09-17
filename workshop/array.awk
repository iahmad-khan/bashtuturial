# List of surnames in original order followed by a list of Science results
# (field 7 of results file) in reverse order using a two-dimensional array.

awk '{ x[NR,1] = $7; x[1,NR] = $2; sum += $7}
 END { 
     for (i = NR; i > 1; --i)
       { name = NR - i + 2
         print x[1,name], x[i,1]}
     print "Sum of column 7 = "sum
  }' $HOME/results


