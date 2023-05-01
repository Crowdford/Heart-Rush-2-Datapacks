give @s snowball{display:{Name:'[{"translate":"equipment.item.fireball","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63,CustomModelData:1}
scoreboard players reset @s snowFireball
kill @e[type=snowball]

scoreboard players add @s fbCooldown1 1
scoreboard players add @s fbCooldown2 3