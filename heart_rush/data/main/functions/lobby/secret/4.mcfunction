scoreboard players set @s lobbyArmor 4
function main:lobby/secret/all

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"lobby.secret.armor.4","color":"yellow","italic":false}',color:16771599},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"translate":"lobby.secret.armor.4","color":"yellow","italic":false}',color:16766479},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"translate":"lobby.secret.armor.4","color":"yellow","italic":false}',color:16711439},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.head with air

#team join lobby_thunder @s
execute as @s[team=lobby_fire] run function main:lobby/team
execute as @s[team=lobby_witch] run function main:lobby/team
effect clear @s glowing
effect clear @s invisibility