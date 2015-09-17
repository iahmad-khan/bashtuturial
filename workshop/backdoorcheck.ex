#usage: backdoorcheck.ex

print "The following users have a userid of 0:\n"
grep "^.*:.*:0:.*:.*:.*" /etc/passwd

