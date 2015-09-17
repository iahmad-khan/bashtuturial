# This is a simple awk statment
awk '{ print gsub("Georgia","Tech") "\t" $0 }' $HOME/results 
