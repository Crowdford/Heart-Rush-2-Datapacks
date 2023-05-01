clear @s #main:all{custom:"armor"}
tag @s remove armorUpdate

# armor 
execute if data entity @s ActiveEffects[{Id:14}] run function main:game/equipment/armor_invisible
execute unless data entity @s ActiveEffects[{Id:14}] run function main:game/equipment/armor_visible

# Elytra
execute if score @s elytra matches 1.. run item replace entity @s armor.chest with elytra{Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.elytra","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor"}