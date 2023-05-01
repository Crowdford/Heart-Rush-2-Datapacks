data modify block 0 0 0 Items set value [{id:"minecraft:shield",Count:1,Slot:0b,tag:{HideFlags:127,eval:0,CustomModelData:100,egui:1,display:{Name:'""'},BlockEntityTag:{Base:0,Patterns:[]}}}]




scoreboard players operation pattern Temp = @s bp
function egui:gui/util/add_pattern

scoreboard players operation pattern Temp = @s bp1
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp2
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp3
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp4
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp5
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp6
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp7
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp8
function egui:gui/util/add_pattern
scoreboard players operation pattern Temp = @s bp9
function egui:gui/util/add_pattern

execute if entity @s[team=red] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns prepend value {Color:0,Pattern:"ld"}
execute if entity @s[team=blue] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns prepend value {Color:0,Pattern:"rud"}
execute if entity @s[team=green] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns prepend value {Color:0,Pattern:"lud"}
execute if entity @s[team=yellow] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns prepend value {Color:0,Pattern:"rd"}
execute if entity @s[name=_tsts_] unless entity @s[scores={beeb=1}] unless entity @s[scores={crow=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"cr"}
execute if entity @s[name=McTsts] unless entity @s[scores={beeb=1}] unless entity @s[scores={crow=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"cr"}
execute if entity @s[name=Ds43m] unless entity @s[scores={beeb=1}] unless entity @s[scores={crow=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"ms"}
execute if entity @s[name=gibbsly] unless entity @s[scores={beeb=1}] unless entity @s[scores={crow=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"gru"}
execute if entity @s[scores={crow=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"br"}
execute if entity @s[scores={beeb=1}] run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append value {Color:0,Pattern:"gru"}


execute if score placeType Temp matches 1 run loot replace entity @s enderchest.17 1 mine 0 0 0
execute if score placeType Temp matches 2 run data modify block 0 0 0 Items[0].tag merge value {CanDestroy:["#main:breakable"],egui:0,Unbreakable:1,no_drop:1b,custom:"shield",display:{Name:'{"translate":"equipment.shield","color":"gray","italic":false}'},custom:"shield"}
execute if score placeType Temp matches 2 if entity @s[team=red] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 1
execute if score placeType Temp matches 2 if entity @s[team=blue] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 2
execute if score placeType Temp matches 2 if entity @s[team=green] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 3
execute if score placeType Temp matches 2 if entity @s[team=yellow] run data modify block 0 0 0 Items[0].tag.CustomModelData set value 4
execute if score placeType Temp matches 2 run loot replace entity @s weapon.offhand 1 mine 0 0 0
execute if score placeType Temp matches 3 run loot give @s mine 0 0 0

