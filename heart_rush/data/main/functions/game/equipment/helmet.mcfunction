# helmet
item replace entity @s armor.head with air
execute if data entity @s ActiveEffects[{Id:14}] run function main:game/equipment/helmet_invisible
execute unless data entity @s ActiveEffects[{Id:14}] run function main:game/equipment/helmet_visible


