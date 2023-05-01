clear @s #main:all{custom:"ranged"}


execute if score @s eqrLevel matches 0..1 run give @s bow{Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.bow","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"ranged",no_drop:1b}
execute if score @s eqrLevel matches 2..6 run give @s bow{Unbreakable:1,HideFlags:63,Enchantments:[{id:"power",lvl:1}],display:{Name:'{"translate":"equipment.bow","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"ranged",no_drop:1b}
execute if score @s eqrLevel matches 7 if score @s eqrPath2 matches 1 run give @s bow{CustomModelData:2,Unbreakable:1,HideFlags:63,Enchantments:[{id:"power",lvl:1},{id:"punch",lvl:2}],display:{Name:'{"translate":"equipment.bow","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"ranged",no_drop:1b}
execute if score @s eqrLevel matches 7 if score @s eqrPath2 matches 2 run give @s bow{CustomModelData:1,Unbreakable:1,HideFlags:63,Enchantments:[{id:"power",lvl:2}],display:{Name:'{"translate":"equipment.bow","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"ranged",no_drop:1b}

function main:game/equipment/trident