execute as @a[tag=winners] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
title @a[tag=winners] title {"translate":"game.result.victory","color":"green","bold":true}
execute as @a[tag=winners] run function main:announcers/victory
execute as @a[tag=!winners,scores={pid=1..}] run function main:announcers/defeat
title @a[tag=!winners,scores={pid=1..}] title {"translate":"game.result.defeat","color":"#FF5556","bold":true}
tag @a remove winners

# MVP
execute as @a run scoreboard players operation mvp mvpKills > @s mvpKills
execute as @a run scoreboard players operation mvp mvpAssists > @s mvpAssists
execute as @a run scoreboard players operation mvp mvpPoints > @s mvpPoints
execute as @a run scoreboard players operation mvp mvpDeaths > @s mvpDeaths
execute as @a if score mvp mvpKills = @s mvpKills run tag @s add mvpKills
execute as @a if score mvp mvpAssists = @s mvpAssists run tag @s add mvpAssists
execute as @a if score mvp mvpPoints = @s mvpPoints run tag @s add mvpPoints
execute as @a if score mvp mvpDeaths = @s mvpDeaths run tag @s add mvpDeaths

execute as @a[tag=mvpKills,scores={lastTeam=1}] run team join red @s
execute as @a[tag=mvpKills,scores={lastTeam=2}] run team join blue @s
execute as @a[tag=mvpKills,scores={lastTeam=3}] run team join green @s
execute as @a[tag=mvpKills,scores={lastTeam=4}] run team join yellow @s
execute as @a[tag=mvpAssists,scores={lastTeam=1}] run team join red @s
execute as @a[tag=mvpAssists,scores={lastTeam=2}] run team join blue @s
execute as @a[tag=mvpAssists,scores={lastTeam=3}] run team join green @s
execute as @a[tag=mvpAssists,scores={lastTeam=4}] run team join yellow @s
execute as @a[tag=mvpPoints,scores={lastTeam=1}] run team join red @s
execute as @a[tag=mvpPoints,scores={lastTeam=2}] run team join blue @s
execute as @a[tag=mvpPoints,scores={lastTeam=3}] run team join green @s
execute as @a[tag=mvpPoints,scores={lastTeam=4}] run team join yellow @s
execute as @a[tag=mvpDeaths,scores={lastTeam=1}] run team join red @s
execute as @a[tag=mvpDeaths,scores={lastTeam=2}] run team join blue @s
execute as @a[tag=mvpDeaths,scores={lastTeam=3}] run team join green @s
execute as @a[tag=mvpDeaths,scores={lastTeam=4}] run team join yellow @s

tellraw @a {"text":" |  ","color":"gray"}
tellraw @a {"text":" |  ","color":"gray"}
tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.ended","color":"gold","bold":true}]
execute if score red lives matches 1.. run data modify storage sbc:main win set value {color:'{"text":"","color":"red"}',name:'{"translate":"game.team.red"}'}
execute if score blue lives matches 1.. run data modify storage sbc:main win set value {color:'{"text":"","color":"blue"}',name:'{"translate":"game.team.blue"}'}
execute if score green lives matches 1.. run data modify storage sbc:main win set value {color:'{"text":"","color":"green"}',name:'{"translate":"game.team.green"}'}
execute if score yellow lives matches 1.. run data modify storage sbc:main win set value {color:'{"text":"","color":"yellow"}',name:'{"translate":"game.team.yellow"}'}
tellraw @a [{"text":" |  ","color":"gray"},[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.win","bold":false,"with":[{"nbt":"win.name","storage":"sbc:main","bold":true,"interpret":true}]}]]
tellraw @a {"text":" |  ","color":"gray"}
execute if score mvp mvpKills matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.kill","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.kills.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpKills]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpKills"}}]]}]
execute if score mvp mvpKills matches 2.. run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.kills","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.kills.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpKills]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpKills"}}]]}]
execute if score mvp mvpAssists matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.assist","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.assists.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpAssists]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpAssists"}}]]}]
execute if score mvp mvpAssists matches 2.. run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.assists","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.assists.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpAssists]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpAssists"}}]]}]
execute if score mvp mvpPoints matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.point","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.points.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpPoints]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpPoints"}}]]}]
execute if score mvp mvpPoints matches 2.. run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.points","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.points.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpPoints]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpPoints"}}]]}]
execute if score mvp mvpDeaths matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.death","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.deaths.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpDeaths]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpDeaths"}}]]}]
execute if score mvp mvpDeaths matches 2.. run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"game.result.mvp.deaths","with":[[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"translate":"game.result.mvp.deaths.title","bold":true}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"selector":"@a[tag=mvpDeaths]"}],[{"nbt":"win.color","storage":"sbc:main","interpret":true},{"score":{"name":"mvp","objective":"mvpDeaths"}}]]}]
tellraw @a {"text":" |  ","color":"gray"}

execute as @a[tag=mvpKills] run function main:lobby/team
execute as @a[tag=mvpAssists] run function main:lobby/team
execute as @a[tag=mvpPoints] run function main:lobby/team
execute as @a[tag=mvpDeaths] run function main:lobby/team

tag @a remove mvpKills
tag @a remove mvpAssists
tag @a remove mvpPoints
tag @a remove mvpDeaths

schedule function main:game/clear_delay 2s
schedule function main:game/clear_delay 12s