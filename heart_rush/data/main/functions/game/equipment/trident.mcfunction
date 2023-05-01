clear @s #main:all{custom:"trident"}

execute if score @s eqrLevel matches 4 if score @s eqrPath matches 1 run give @s trident{Unbreakable:1,HideFlags:63,Enchantments:[{id:"loyalty",lvl:1}],display:{Name:'{"translate":"equipment.trident","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"trident",no_drop:1b}
execute if score @s eqrLevel matches 5 if score @s eqrPath matches 1 run give @s trident{Unbreakable:1,HideFlags:63,Enchantments:[{id:"loyalty",lvl:5}],display:{Name:'{"translate":"equipment.trident","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"trident",no_drop:1b}
execute if score @s eqrLevel matches 6.. if score @s eqrPath matches 1 run give @s trident{Unbreakable:1,HideFlags:63,Enchantments:[{id:"loyalty",lvl:5},{id:"sharpness",lvl:1}],display:{Name:'{"translate":"equipment.trident","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"trident",no_drop:1b}



data modify storage sbc:main tridentOwner set from entity @s UUID
execute as @e[type=trident] run function main:game/equipment/trident_kill