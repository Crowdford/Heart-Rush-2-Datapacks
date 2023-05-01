#say reason immediate assist
tag @s add temp
execute as @a if score @s playerID = @p[tag=temp] deathLPlayerID run tag @s add temp2
execute as @a if score @s playerID = @p[tag=temp] deathPPlayerID run tag @s add temp3
execute as @p[tag=temp2] run function health:triggers/kill
execute as @p[tag=temp3] run function health:triggers/assist

execute if score @s deathLType matches 0 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.unknown","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 1 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.explosion","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 2 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 3 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 4 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 5 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.arrow","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 6 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.trident","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 7 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.fireball","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 8 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.fireball","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 9 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.lightning","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 10 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.magic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 11 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 12 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 13 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 14 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 15 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 16 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 17 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.magic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 18 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.explosion","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 19 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.explosion","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}],{"translate":"item.minecraft.crossbow"}]}]'
execute if score @s deathLType matches 20 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 21 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 22 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 23 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 24 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.fangs","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'

execute if score @s deathLType matches 101 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.reconnect","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 102 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.creeper_charge","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 103 run data modify block 0 1 0 Text1 set value '[{"translate":"death.assist.edge","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp3,team=!red]"},{"selector":"@p[tag=temp3,team=red]","color":"#FF5556"}]]}]'

tag @s remove temp
tag @a remove temp2
tag @a remove temp3

## DEATHS: p1 was killed by p2 with X whilst fighting p3