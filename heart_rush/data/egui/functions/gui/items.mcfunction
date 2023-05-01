#
# Generic Action
# --> execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] run <command>
#
execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1

#
# Actions 
# --> item replace entity @s enderchest. with<slot> <item>{eval:<id>,egui:1}
# --> execute as @s[scores={tsEGUI_guiVal=<id>}] run <command>
#
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.item.description.1","color":"gray","italic":false}','{"translate":"menu.item.description.2","color":"gray","italic":false}','{"translate":"menu.item.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=red] enderchest.0 with name_tag{eval:0,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.item.description.1","color":"gray","italic":false}','{"translate":"menu.item.description.2","color":"gray","italic":false}','{"translate":"menu.item.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=blue] enderchest.0 with rabbit_foot{eval:0,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.item.description.1","color":"gray","italic":false}','{"translate":"menu.item.description.2","color":"gray","italic":false}','{"translate":"menu.item.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=green] enderchest.0 with book{eval:0,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.item.description.1","color":"gray","italic":false}','{"translate":"menu.item.description.2","color":"gray","italic":false}','{"translate":"menu.item.description.3","color":"gray","italic":false}']}}
item replace entity @s[team=yellow] enderchest.0 with egg{eval:0,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.item.description.1","color":"gray","italic":false}','{"translate":"menu.item.description.2","color":"gray","italic":false}','{"translate":"menu.item.description.3","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.9 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.9 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.9 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.9 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.18 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.18 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.18 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.18 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.8 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.8 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.8 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.8 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.17 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.17 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.17 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.17 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.17 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=red] enderchest.26 with light_blue_dye{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=blue] enderchest.26 with rabbit_hide{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=green] enderchest.26 with slime_ball{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=yellow] enderchest.26 with glowstone_dust{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 11

# misc
item replace entity @s enderchest.1 with minecraft:snowball{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.fireball","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["30"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.2"}']},eval:2,egui:1,CustomModelData:1}
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches ..29 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 30.. run give @s snowball{display:{Name:'[{"translate":"equipment.item.fireball","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.fireball.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63,CustomModelData:1}
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 30.. run scoreboard players remove @s gold 30

item replace entity @s enderchest.10 with minecraft:bowl{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.creeper_charge","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.2"}','{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.3"}']},eval:3,egui:1}
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 80.. run give @s carrot_on_a_stick{CustomModelData:7,display:{Name:'[{"translate":"equipment.item.creeper_charge","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.2"}','{"color":"gray","italic":false,"translate":"equipment.item.creeper_charge.description.3"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

item replace entity @s enderchest.19 with minecraft:carrot_on_a_stick{CustomModelData:8,HideFlags:63,display:{Name:'["",{"translate":"equipment.item.forcefield","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.forcefield.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.forcefield.description.2"}']},eval:9,egui:1}
execute as @s[scores={tsEGUI_guiVal=9}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=9}] if score @s gold matches 80.. run give @s carrot_on_a_stick{CustomModelData:8,display:{Name:'[{"translate":"equipment.item.forcefield","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.forcefield.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.forcefield.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=9}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

# saviors
item replace entity @s enderchest.3 with minecraft:carrot_on_a_stick{CustomModelData:5,HideFlags:63,display:{Name:'["",{"translate":"equipment.item.orb_of_resurrection","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["120"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.orb_of_resurrection.description.1"}','{"color":"gray","italic":false,"translate":"equipment.item.orb_of_resurrection.description.2"}','{"color":"red","translate":"menu.item.limited","italic":false}']},eval:4,egui:1}
execute if entity @s[nbt={Inventory:[{id:"minecraft:light_gray_dye"}]}] run item replace entity @s enderchest.3 with minecraft:structure_void{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.orb_of_resurrection","color":"red","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["120"],"color":"dark_red","italic":false}]',Lore:['{"color":"red","italic":false,"translate":"equipment.item.orb_of_resurrection.description.1"}','{"color":"red","italic":false,"translate":"equipment.item.orb_of_resurrection.description.2"}','{"color":"dark_red","translate":"menu.item.limited","italic":false}']},eval:4,egui:1}
execute as @s[scores={tsEGUI_guiVal=4}] if score @s gold matches ..119 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=4}] if score @s gold matches 120.. if entity @s[nbt={Inventory:[{id:"minecraft:light_gray_dye"}]}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=4}] if score @s gold matches 120.. if entity @s[nbt={Inventory:[{id:"minecraft:light_gray_dye"}]}] run scoreboard players set @s tsEGUI_guiVal 1000
execute as @s[scores={tsEGUI_guiVal=4}] if score @s gold matches 120.. run give @s light_gray_dye{display:{Name:'[{"translate":"equipment.item.orb_of_resurrection","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.orb_of_resurrection.description.1"}','{"color":"gray","italic":false,"translate":"equipment.item.orb_of_resurrection.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=4}] if score @s gold matches 120.. run scoreboard players remove @s gold 120

item replace entity @s enderchest.12 with minecraft:carrot_on_a_stick{CustomModelData:6,HideFlags:63,display:{Name:'["",{"translate":"equipment.item.void_charm","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["160"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.void_charm.description.1"}','{"color":"gray","italic":false,"translate":"equipment.item.void_charm.description.2"}','{"color":"red","translate":"menu.item.limited","italic":false}']},eval:5,egui:1}
execute if entity @s[nbt={Inventory:[{id:"minecraft:beetroot_seeds"}]}] run item replace entity @s enderchest.12 with minecraft:structure_void{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.void_charm","color":"red","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["160"],"color":"dark_red","italic":false}]',Lore:['{"color":"red","italic":false,"translate":"equipment.item.void_charm.description.1"}','{"color":"red","italic":false,"translate":"equipment.item.void_charm.description.2"}','{"color":"dark_red","translate":"menu.item.limited","italic":false}']},eval:5,egui:1}
execute as @s[scores={tsEGUI_guiVal=5}] if score @s gold matches ..159 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=5}] if score @s gold matches 160.. if entity @s[nbt={Inventory:[{id:"minecraft:beetroot_seeds"}]}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=5}] if score @s gold matches 160.. if entity @s[nbt={Inventory:[{id:"minecraft:beetroot_seeds"}]}] run scoreboard players set @s tsEGUI_guiVal 1000
execute as @s[scores={tsEGUI_guiVal=5}] if score @s gold matches 160.. run give @s beetroot_seeds{display:{Name:'[{"translate":"equipment.item.void_charm","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.void_charm.description.1"}','{"color":"gray","italic":false,"translate":"equipment.item.void_charm.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=5}] if score @s gold matches 160.. run scoreboard players remove @s gold 160

# crystals
item replace entity @s enderchest.7 with minecraft:lapis_lazuli{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.jump_crystal","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["40"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.jump_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.jump_crystal.description.2"}']},eval:6,egui:1}
execute as @s[scores={tsEGUI_guiVal=6}] if score @s gold matches ..39 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=6}] if score @s gold matches 40.. run give @s carrot_on_a_stick{CustomModelData:2,display:{Name:'[{"translate":"equipment.item.jump_crystal","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.jump_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.jump_crystal.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=6}] if score @s gold matches 40.. run scoreboard players remove @s gold 40

item replace entity @s enderchest.16 with minecraft:cyan_dye{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.speed_crystal","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["50"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.speed_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.speed_crystal.description.2"}']},eval:7,egui:1}
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches ..49 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches 50.. run give @s carrot_on_a_stick{CustomModelData:4,display:{Name:'[{"translate":"equipment.item.speed_crystal","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.speed_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.jump_crystal.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches 50.. run scoreboard players remove @s gold 50

item replace entity @s enderchest.25 with minecraft:purple_dye{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.persistence_crystal","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.persistence_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.persistence_crystal.description.2"}','{"color":"red","translate":"menu.item.limited","italic":false}']},eval:8,egui:1}
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run item replace entity @s enderchest.25 with minecraft:structure_void{HideFlags:63,display:{Name:'["",{"translate":"equipment.item.persistence_crystal","color":"red","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_red","italic":false}]',Lore:['{"color":"red","italic":false,"translate":"equipment.item.persistence_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"red","italic":false,"translate":"equipment.item.persistence_crystal.description.2"}','{"color":"dark_red","translate":"menu.item.limited","italic":false}']},eval:8,egui:1}
execute as @s[scores={tsEGUI_guiVal=8}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=8}] if score @s gold matches 60.. if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=8}] if score @s gold matches 60.. if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] run scoreboard players set @s tsEGUI_guiVal 1000
execute as @s[scores={tsEGUI_guiVal=8}] if score @s gold matches 60.. run give @s carrot_on_a_stick{CustomModelData:3,display:{Name:'[{"translate":"equipment.item.persistence_crystal","color":"gray","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.persistence_crystal.description.1","with":[{"keybind":"key.use"}]}','{"color":"gray","italic":false,"translate":"equipment.item.persistence_crystal.description.2"}']},CanDestroy:["#main:breakable"],HideFlags:63,custom:"persistence_crystal"}
execute as @s[scores={tsEGUI_guiVal=8}] if score @s gold matches 60.. run scoreboard players remove @s gold 60


# arrows
item replace entity @s enderchest.5 with minecraft:arrow{HideFlags:63,display:{Name:'["",{"translate":"equipment.arrow.default","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["5"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.arrow.description.1"}']},eval:10,egui:1}
execute as @s[scores={tsEGUI_guiVal=10}] if score @s gold matches ..4 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=10}] if score @s gold matches 5.. run give @s arrow{arrow:"default",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.default","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b}
execute as @s[scores={tsEGUI_guiVal=10}] if score @s gold matches 5.. run scoreboard players remove @s gold 5

item replace entity @s enderchest.14 with minecraft:tipped_arrow{HideFlags:63,CustomPotionColor:7077686,display:{Name:'["",{"translate":"equipment.arrow.poison","color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["15"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"equipment.item.arrow_poison.description.1"}']},eval:11,egui:1}
execute as @s[scores={tsEGUI_guiVal=11}] if score @s gold matches ..14 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=11}] if score @s gold matches 15.. run give @s tipped_arrow{arrow:"poison",HideFlags:63,display:{Name:'{"translate":"equipment.arrow.poison","color":"gray","italic":false}'},CanDestroy:["#main:breakable"],custom:"arrow",no_drop:1b,CustomPotionEffects:[{Id:29b,Amplifier:0b,Duration:100}],CustomPotionColor:7077686}
execute as @s[scores={tsEGUI_guiVal=11}] if score @s gold matches 15.. run scoreboard players remove @s gold 15



