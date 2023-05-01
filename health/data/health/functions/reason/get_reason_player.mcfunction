#say reason player
tag @s add temp
execute as @a if score @s playerID = @p[tag=temp] deathLPlayerID run tag @s add temp2
execute as @p[tag=temp2] run function health:triggers/kill

execute if score @s deathLType matches 0 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 1 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.explosion.indirect_player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 2 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.inFire.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 3 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.lava.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 4 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.onFire.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 5 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.arrow","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 6 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.trident","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 7 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.onFire.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 8 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.onFire.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 9 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.lightningBolt.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 10 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.magic.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 11 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 12 run function health:reason/get_reason_player_void
execute if score @s deathLType matches 13 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.inWall.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 14 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.drown.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 15 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.cactus.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 16 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.flyIntoWall.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 17 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.even_more_magic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 18 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.fireworks.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 19 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.fireworks.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 20 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.sweetBerryBush.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 21 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.sting.indirect_player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 22 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.wither.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 23 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.poison.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 24 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.fangs.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'

execute if score @s deathLType matches 101 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.reconnect.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 102 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.creeper_charge.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 103 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.edge.player","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}],[{"selector":"@p[tag=temp2,team=!red]"},{"selector":"@p[tag=temp2,team=red]","color":"#FF5556"}]]}]'

tag @s remove temp
tag @a remove temp2


## DEATHS: p1 died via X whilst fight p2