# Gamerules
gamerule doImmediateRespawn true
gamerule showDeathMessages false

# Objectives
scoreboard objectives add respawn dummy

scoreboard objectives add deathID dummy
scoreboard objectives add playerID dummy

scoreboard objectives add deathReason dummy
scoreboard objectives add deathLPlayerTime dummy
scoreboard objectives add deathLPlayerID dummy
scoreboard objectives add deathLType dummy
scoreboard objectives add deathLTypePrev dummy

scoreboard objectives add healthFirework1 minecraft.used:minecraft.firework_rocket
scoreboard objectives add healthFirework2 minecraft.used:minecraft.crossbow
scoreboard objectives add healthFireworkT dummy

scoreboard objectives add health health
scoreboard objectives add healthActual dummy
scoreboard objectives add healthMax dummy

# Scores
scoreboard players reset * playerID
scoreboard players set #id playerID 0
scoreboard players set empty deathID 0
scoreboard players set #20 respawn 20
scoreboard players set #30 respawn 30
scoreboard players set #60 respawn 60


# Bossbars
bossbar add dead0 ""
bossbar set dead0 name ["",{"text":"\uE001","color":"white","font":"logo"},{"translate":"space.-1"},{"text":"\uE002","color":"white","font":"logo"}]
bossbar set minecraft:dead0 max 1
bossbar set minecraft:dead0 value 1
bossbar set minecraft:dead0 color purple

bossbar add dead3 ""
bossbar set dead3 name {"translate":"deathScreen.title","color":"white","font":"big"}
bossbar set minecraft:dead3 max 1
bossbar set minecraft:dead3 value 1
bossbar set minecraft:dead3 color purple

# bossbar 4
bossbar add dead4a ""
bossbar add dead4b ""
bossbar add dead4c ""
bossbar add dead4d ""
bossbar add dead4e ""
bossbar add dead4f ""
bossbar add dead4g ""
bossbar add dead4h ""
bossbar add dead4i ""
bossbar add dead4j ""
bossbar set minecraft:dead4a max 1
bossbar set minecraft:dead4b max 1
bossbar set minecraft:dead4c max 1
bossbar set minecraft:dead4d max 1
bossbar set minecraft:dead4e max 1
bossbar set minecraft:dead4f max 1
bossbar set minecraft:dead4g max 1
bossbar set minecraft:dead4h max 1
bossbar set minecraft:dead4i max 1
bossbar set minecraft:dead4i max 1
bossbar set minecraft:dead4a value 1
bossbar set minecraft:dead4b value 1
bossbar set minecraft:dead4c value 1
bossbar set minecraft:dead4d value 1
bossbar set minecraft:dead4e value 1
bossbar set minecraft:dead4f value 1
bossbar set minecraft:dead4g value 1
bossbar set minecraft:dead4h value 1
bossbar set minecraft:dead4i value 1
bossbar set minecraft:dead4i value 1
bossbar set minecraft:dead4a color purple
bossbar set minecraft:dead4b color purple
bossbar set minecraft:dead4c color purple
bossbar set minecraft:dead4d color purple
bossbar set minecraft:dead4e color purple
bossbar set minecraft:dead4f color purple
bossbar set minecraft:dead4g color purple
bossbar set minecraft:dead4h color purple
bossbar set minecraft:dead4i color purple
bossbar set minecraft:dead4j color purple

# bossbar 6
bossbar add dead6a ""
bossbar add dead6b ""
bossbar add dead6c ""
bossbar add dead6d ""
bossbar add dead6e ""
bossbar add dead6f ""
bossbar add dead6g ""
bossbar add dead6h ""
bossbar add dead6i ""
bossbar add dead6j ""
bossbar set minecraft:dead6a max 1
bossbar set minecraft:dead6b max 1
bossbar set minecraft:dead6c max 1
bossbar set minecraft:dead6d max 1
bossbar set minecraft:dead6e max 1
bossbar set minecraft:dead6f max 1
bossbar set minecraft:dead6g max 1
bossbar set minecraft:dead6h max 1
bossbar set minecraft:dead6i max 1
bossbar set minecraft:dead6i max 1
bossbar set minecraft:dead6a value 1
bossbar set minecraft:dead6b value 1
bossbar set minecraft:dead6c value 1
bossbar set minecraft:dead6d value 1
bossbar set minecraft:dead6e value 1
bossbar set minecraft:dead6f value 1
bossbar set minecraft:dead6g value 1
bossbar set minecraft:dead6h value 1
bossbar set minecraft:dead6i value 1
bossbar set minecraft:dead6i value 1
bossbar set minecraft:dead6a color purple
bossbar set minecraft:dead6b color purple
bossbar set minecraft:dead6c color purple
bossbar set minecraft:dead6d color purple
bossbar set minecraft:dead6e color purple
bossbar set minecraft:dead6f color purple
bossbar set minecraft:dead6g color purple
bossbar set minecraft:dead6h color purple
bossbar set minecraft:dead6i color purple
bossbar set minecraft:dead6j color purple