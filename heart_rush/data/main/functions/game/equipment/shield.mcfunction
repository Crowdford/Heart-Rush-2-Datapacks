clear @s #main:all{custom:"shield"}

# Team Color
scoreboard players set placeType Temp 3
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players set placeType Temp 2
execute if score @s eqaLevel matches 5.. unless score @s eqs matches 0 run function egui:gui/util/place_shield

# Custom Design
#item replace entity @s[name=_tsts_,scores={eqaLevel=5..}] weapon.offhand with minecraft:shield{HideFlags:63,CustomModelData:5,CanDestroy:["#main:breakable"],BlockEntityTag:{Base:0,Patterns:[{Color:0,Pattern:"cr"}]},Unbreakable:1,no_drop:1b,custom:"shield",display:{Name:'{"text":"Shield","color":"gray","italic":false}'},custom:"shield"}
#item replace entity @s[name=McTsts,scores={eqaLevel=5..}] weapon.offhand with minecraft:shield{HideFlags:63,CustomModelData:5,CanDestroy:["#main:breakable"],BlockEntityTag:{Base:0,Patterns:[{Color:0,Pattern:"cr"}]},Unbreakable:1,no_drop:1b,custom:"shield",display:{Name:'{"text":"Shield","color":"gray","italic":false}'},custom:"shield"}
