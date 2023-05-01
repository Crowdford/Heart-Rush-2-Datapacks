scoreboard players set @s lobbyArmor 5
function main:lobby/secret/all

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"lobby.secret.armor.5","color":"dark_purple","italic":false}',color:8978616},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"translate":"lobby.secret.armor.5","color":"dark_purple","italic":false}',color:11535851},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"translate":"lobby.secret.armor.5","color":"dark_purple","italic":false}',color:5964154},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.head with nether_wart{display:{Name:'{"translate":"lobby.secret.armor.5","color":"dark_purple","italic":false}',color:5964154},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1

team join lobby_witch @s
effect give @s glowing infinite 120 true
effect give @s invisibility infinite 120 true
effect clear @s jump_boost
effect clear @s fire_resistance