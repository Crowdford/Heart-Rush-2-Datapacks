tag @e[type=trident,sort=nearest,limit=1] add tempTrident
execute as @e[type=trident,sort=nearest,limit=1,tag=tempTrident] run data modify entity @s DealtDamage set value 1b
#execute as @e[type=trident,sort=nearest,limit=1,tag=tempTrident] at @s as @a if score @s playerID = @e[type=trident,tag=tempTrident,limit=1] tridentID at @s run tp @e[type=trident,tag=tempTrident,limit=1] @s
tag @e[type=trident,sort=nearest,limit=1] remove tempTrident
