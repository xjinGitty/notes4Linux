*(mark the previous nots as quotations)*
> 1. shell script could be used as nimi-work 
> --exit: for terminate program with a value: exit 0; then could be check via $?;  we also could define error info by ourself by using exit n
> --in the script we need define the PATH env??
> 
> write at last when reviewed:
> -- bash or the definitely path to execute script, new bash process is launched
> -- when use source, will execute script in father shell
> 
> -- test []
> 
> -- shell script also has its $0 $1; function() has its own $0 ; the other is awk has its own $0
1. declare -i and $(()) could be used for the formula caculation
2. sh and source and . to run the script (sh will have no effect to the parents bash, source could effect the parents)
3. [] in RE and in script has different format with 'space'

