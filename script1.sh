users=$(cat /etc/passwd | awk -F : '{ if($3>=1000 && $3<5000) print $1 }')

for user in $users
    do
        hdir=$(cat /etc/passwd | awk -F : '{ if($1==user) print $6 }' user=$user)
        size=$(du -s $hdir)
        echo $size $user 
done | sort -n

