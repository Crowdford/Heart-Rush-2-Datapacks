#tellraw @a ["effect end: ",{"nbt":"effect","storage":"effectstack:trigger"}]
execute if data storage effectstack:trigger effect{id:26} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:14} run function main:game/equipment/armor
execute if data storage effectstack:trigger effect{id:27} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:31} run bossbar set minecraft:3 players @a[nbt={ActiveEffects:[{Id:31}]}]
#tellraw @a ["Effect Runs Out: ",{"storage":"effectstack:trigger","nbt":"effect.id"}]
execute unless entity @s[tag=dontUneffectTrigger] unless entity @s[tag=dontUneffectTrigger2] unless entity @s[tag=dontUneffectTrigger3] at @s run function effectstack:triggers/effect_end2


# Actionbar
execute as @s[gamemode=adventure] run function main:game/ui