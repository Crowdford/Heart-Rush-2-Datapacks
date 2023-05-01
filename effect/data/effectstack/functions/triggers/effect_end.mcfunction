#tellraw @a ["effect end: ",{"nbt":"effect","storage":"effectstack:trigger"}]
execute if data storage effectstack:trigger effect{id:26} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:14} run function main:game/equipment/armor
execute if data storage effectstack:trigger effect{id:27} run function main:game/equipment/helmet
execute if data storage effectstack:trigger effect{id:31} run bossbar set minecraft:dark players @a[nbt={ActiveEffects:[{Id:31b}]}]
execute unless entity @s[tag=dontUneffectTrigger] at @s run function #skills:events/player/effect/end

# Actionbar
execute as @s[gamemode=adventure] run function main:game/ui