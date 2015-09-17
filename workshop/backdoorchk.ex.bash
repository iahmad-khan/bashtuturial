#usage: backdoorchk.ex.bash

echo "The following users have a userid of 0:"
grep "^.*:.*:0:.*:.*:.*:.*" /etc/passwd
