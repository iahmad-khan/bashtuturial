#usage: chop.ex

echo -e "Please enter your e-mail address: \c"
read emailvar
usernamevar=${emailvar%@*}
echo "Hello $usernamevar !!"
