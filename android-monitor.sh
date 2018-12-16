#!/bin/sh
function walkk()
{
mems=`dumpsys |grep Lost|awk  '{print $3}'|sed  's/\,//s/K//'|sed  's/\,//s/K//'`
echo "ddd"
echo $mems
echo "fff"
if [[ mems -gt 1800000 ]];
    then
        echo "lost too many reboot"
        echo c >/proc/sysrq-trigger
else
    echo "sasasi"
#    echo c >/proc/sysrq-trigger
fi
}
while [ true ]
do
echo "dd"
date
walkk
sleep 300
done
