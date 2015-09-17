#usage: chop.ex

print "Please enter your e-mail address: \c"
read emailvar
usernamevar=${emailvar%@*}
print "Hello $usernamevar !!"
