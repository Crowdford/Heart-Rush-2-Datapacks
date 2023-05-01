#say reason direct
tag @s add temp

execute if score @s deathLType matches 0 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 1 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.explosion","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 2 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.inFire","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 3 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.lava","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 4 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.onFire","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 5 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 6 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 7 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.inFire","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 8 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.explosion","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 9 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.lightningBolt","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 10 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.magic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 11 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 12 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.outOfWorld","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 13 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.inWall","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 14 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.drown","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 15 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.cactus","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 16 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.flyIntoWall","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 17 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.even_more_magic","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 18 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.fireworks","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 19 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.fireworks","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 20 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.sweetBerryBush","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 21 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.sting","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 22 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.wither","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 23 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.poison","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 24 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.evokerFangs","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'


execute if score @s deathLType matches 101 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.reconnect","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 102 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.creeper_charge","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'
execute if score @s deathLType matches 103 run data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.edge","with":[[{"selector":"@p[tag=temp,team=!red]"},{"selector":"@p[tag=temp,team=red]","color":"#FF5556"}]]}]'

tag @s remove temp


## DEATHS: p1 died via X