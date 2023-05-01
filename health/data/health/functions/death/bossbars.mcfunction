bossbar set minecraft:dead0 players @a[scores={respawn=2..}]
bossbar set minecraft:dead3 players @a[scores={respawn=2..}]

bossbar set minecraft:dead4a players @a[scores={deathID=1}]
bossbar set minecraft:dead4b players @a[scores={deathID=2}]
bossbar set minecraft:dead4c players @a[scores={deathID=3}]
bossbar set minecraft:dead4d players @a[scores={deathID=4}]
bossbar set minecraft:dead4e players @a[scores={deathID=5}]
bossbar set minecraft:dead4f players @a[scores={deathID=6}]
bossbar set minecraft:dead4g players @a[scores={deathID=7}]
bossbar set minecraft:dead4h players @a[scores={deathID=8}]
bossbar set minecraft:dead4i players @a[scores={deathID=9}]
bossbar set minecraft:dead4i players @a[scores={deathID=10}]

bossbar set minecraft:dead6a players @a[scores={deathID=1}]
bossbar set minecraft:dead6b players @a[scores={deathID=2}]
bossbar set minecraft:dead6c players @a[scores={deathID=3}]
bossbar set minecraft:dead6d players @a[scores={deathID=4}]
bossbar set minecraft:dead6e players @a[scores={deathID=5}]
bossbar set minecraft:dead6f players @a[scores={deathID=6}]
bossbar set minecraft:dead6g players @a[scores={deathID=7}]
bossbar set minecraft:dead6h players @a[scores={deathID=8}]
bossbar set minecraft:dead6i players @a[scores={deathID=9}]
bossbar set minecraft:dead6i players @a[scores={deathID=10}]



execute if entity @s[scores={deathID=1}] run bossbar set dead4a name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=2}] run bossbar set dead4b name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=3}] run bossbar set dead4c name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=4}] run bossbar set dead4d name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=5}] run bossbar set dead4e name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=6}] run bossbar set dead4f name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=7}] run bossbar set dead4g name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=8}] run bossbar set dead4h name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=9}] run bossbar set dead4i name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]
execute if entity @s[scores={deathID=10}] run bossbar set dead4j name [{"nbt":"CustomName","entity":"@e[tag=deathMsg,limit=1]","interpret":true,"font":"low"}]

execute if entity @s[scores={deathID=1}] run bossbar set dead6a name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=2}] run bossbar set dead6b name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=3}] run bossbar set dead6c name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=4}] run bossbar set dead6d name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=5}] run bossbar set dead6e name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=6}] run bossbar set dead6f name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=7}] run bossbar set dead6g name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=8}] run bossbar set dead6h name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=9}] run bossbar set dead6i name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]
execute if entity @s[scores={deathID=10}] run bossbar set dead6j name [{"translate":"death.respawning","font":"low2","with":[{"color":"yellow","score":{"name":"@s","objective":"respawn"}}]}]

