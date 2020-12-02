path=$1

if ls $path 1>/dev/null 2>/dev/null 
 then  
     echo OK
 else 
     echo NO
 fi

 echo $2
 echo $*

