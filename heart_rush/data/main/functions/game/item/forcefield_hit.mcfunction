execute if entity @s[type=arrow] run function main:game/arrow_break
execute if entity @s[type=arrow] run kill @s
execute if entity @s[type=snowball] run kill @s
#execute at @s unless entity @s[type=trident,nbt={DealtDamage:1b}] run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 2
#execute at @s unless entity @s[type=trident,nbt={DealtDamage:1b}] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.1 10
#execute if entity @s[type=trident] unless entity @s[nbt={DealtDamage:1b}] run function main:game/trident_miss
#execute if entity @s[type=trident] run data modify entity @s DealtDamage set value 1b