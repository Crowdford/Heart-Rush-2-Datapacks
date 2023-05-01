# secrets
clone 10031 102 9999 10031 102 9999 10031 102 9999 replace move
clone 9998 99 10000 9998 99 10000 9998 99 10000 replace move
clone 10008 119 9991 10008 119 9991 10008 119 9991 replace move
clone 9995 97 9999 9995 97 9999 9995 97 9999 replace move
clone 9854 107 10001 9854 107 10001 9854 107 10001 replace move

# dyn skill
clone 9982 107 9985 9981 107 9984 9981 107 9984 replace force
clone 9986 107 10018 9985 107 10017 9985 107 10017 replace force
clone 9957 107 10007 9956 107 10006 9956 107 10006 replace force

# dyn skill 2
clone 9984 107 9982 9984 107 9982 9984 107 9982 replace force
clone 9983 107 10015 9983 107 10015 9983 107 10015 replace force

# credits
clone 9993 105 9998 9991 105 9996 9991 105 9996 replace move

# discord 
clone 10002 105 10008 10000 105 10006 10000 105 10006 replace force

schedule clear main:lobby/update_signs
schedule function main:lobby/update_signs 30s

# update text displays
execute as @e[type=minecraft:text_display] store result entity @s start_interpolation int 1 run data get entity @s start_interpolation