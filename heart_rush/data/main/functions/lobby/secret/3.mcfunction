scoreboard players set @s lobbyArmor 3
function main:lobby/secret/all

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"translate":"lobby.secret.armor.3","color":"red","italic":false}',color:15867906},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"translate":"lobby.secret.armor.3","color":"red","italic":false}',color:9774350},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"translate":"lobby.secret.armor.3","color":"red","italic":false}',color:16279656},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:127,Unbreakable:1} 1
item replace entity @s armor.head with air

team join lobby_fire @s
effect give @s glowing 999999 120 true