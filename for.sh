path=$1

if test X$1 == X
    then
    echo no parameter
    exit
fi

if test -d $1
    then 
        echo $1 is directory
    else
         echo $1 not directory
         exit
fi

list=$(ls $path)

for file in $list
    do
         du -s $1/$file 2>/dev/null
done

