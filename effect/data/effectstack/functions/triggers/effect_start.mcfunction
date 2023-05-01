#tellraw @a ["effect start: ",{"nbt":"effect","storage":"effectstack:trigger"}]
execute if data storage effectstack:trigger effect{id:26} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:14} run function main:game/equipment/armor
execute if data storage effectstack:trigger effect{id:27} run scoreboard players operation @s armorSaved = @s armor
execute if data storage effectstack:trigger effect{id:27} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:31} run bossbar set minecraft:3 players @a[nbt={ActiveEffects:[{Id:31}]}]
execute unless entity @s[tag=dontEffectTrigger] at @s run function #skills:events/player/effect/start


# Actionbar
execute as @s[gamemode=adventure] run function main:game/ui