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
item replace entity @s enderchest.0 with bone{eval:-1000,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ranged.description.1","color":"gray","italic":false}','{"translate":"menu.ranged.description.2","color":"gray","italic":false}','{"translate":"menu.ranged.description.3","color":"gray","italic":false}','{"translate":"menu.ranged.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=red] enderchest.0 with name_tag{eval:-1000,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ranged.description.1","color":"gray","italic":false}','{"translate":"menu.ranged.description.2","color":"gray","italic":false}','{"translate":"menu.ranged.description.3","color":"gray","italic":false}','{"translate":"menu.ranged.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=blue] enderchest.0 with rabbit_foot{eval:-1000,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ranged.description.1","color":"gray","italic":false}','{"translate":"menu.ranged.description.2","color":"gray","italic":false}','{"translate":"menu.ranged.description.3","color":"gray","italic":false}','{"translate":"menu.ranged.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=green] enderchest.0 with book{eval:-1000,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ranged.description.1","color":"gray","italic":false}','{"translate":"menu.ranged.description.2","color":"gray","italic":false}','{"translate":"menu.ranged.description.3","color":"gray","italic":false}','{"translate":"menu.ranged.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=yellow] enderchest.0 with egg{eval:-1000,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ranged.description.1","color":"gray","italic":false}','{"translate":"menu.ranged.description.2","color":"gray","italic":false}','{"translate":"menu.ranged.description.3","color":"gray","italic":false}','{"translate":"menu.ranged.description.4","color":"gray","italic":false}']}}
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
item replace entity @s enderchest.26 with bone_meal{eval:1000,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=red] enderchest.26 with light_blue_dye{eval:1000,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=blue] enderchest.26 with rabbit_hide{eval:1000,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=green] enderchest.26 with slime_ball{eval:1000,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s[team=yellow] enderchest.26 with glowstone_dust{eval:1000,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=1000}] run scoreboard players set @s tsEGUI_guiSwitch 11

# Sell Upgrade
execute if score @s eqrLevel matches 1.. run item replace entity @s[team=red] enderchest.18 with tropical_fish_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqrLevel matches 1.. run item replace entity @s[team=blue] enderchest.18 with pufferfish_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqrLevel matches 1.. run item replace entity @s[team=green] enderchest.18 with salmon_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqrLevel matches 1.. run item replace entity @s[team=yellow] enderchest.18 with cod_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 1 run scoreboard players add @s gold 50
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 2 run scoreboard players add @s gold 100
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 3 run scoreboard players add @s gold 100
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 4 run scoreboard players add @s gold 60
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 5 run scoreboard players add @s gold 80
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 6 run scoreboard players add @s gold 100
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 7 run scoreboard players add @s gold 200
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 4 run scoreboard players set @s eqrPath 0
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqrLevel matches 7 run scoreboard players set @s eqrPath2 0
execute as @s[scores={tsEGUI_guiVal=1001}] run scoreboard players remove @s eqrLevel 1
execute as @s[scores={tsEGUI_guiVal=1001}] run function main:game/equipment/ranged
execute as @s[scores={tsEGUI_guiVal=1001}] run scoreboard players set @s tsEGUI_guiSwitch 15

# Cant be bough
execute as @s[scores={tsEGUI_guiVal=-1}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1

# Root 
execute if score @s eqrLevel matches ..-1 run item replace entity @s enderchest.10 with emerald{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["50"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet2","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.1"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 0 run item replace entity @s enderchest.10 with emerald{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["50"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.1"}']},eval:1,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 1.. run item replace entity @s enderchest.10 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["I"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["50"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.1"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches ..49 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches 50.. run scoreboard players set @s eqrLevel 1
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches 50.. run scoreboard players remove @s gold 50

execute if score @s eqrLevel matches ..0 run item replace entity @s enderchest.11 with bow{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.2"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 1 run item replace entity @s enderchest.11 with bow{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.2"}']},eval:2,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 2.. run item replace entity @s enderchest.11 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["II"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.2"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches ..99 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 100.. run scoreboard players set @s eqrLevel 2
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 100.. run scoreboard players remove @s gold 100

execute if score @s eqrLevel matches ..1 run item replace entity @s enderchest.12 with emerald{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.3"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 2 run item replace entity @s enderchest.12 with emerald{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.3"}']},eval:3,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 3.. run item replace entity @s enderchest.12 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["III"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.3"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches ..99 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 100.. run scoreboard players set @s eqrLevel 3
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 100.. run scoreboard players remove @s gold 100


# Path A (Trident)
execute if score @s eqrLevel matches ..2 run item replace entity @s enderchest.4 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.4a"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 3 run item replace entity @s enderchest.4 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.4a"}']},eval:31,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 4.. if score @s eqrPath matches 1 run item replace entity @s enderchest.13 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","I"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.4a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players set @s eqrLevel 4
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players set @s eqrPath 1
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqrLevel matches ..3 run item replace entity @s enderchest.5 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.5a"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 4 if score @s eqrPath matches 1 run item replace entity @s enderchest.14 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.5a"}']},eval:41,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 5.. if score @s eqrPath matches 1 run item replace entity @s enderchest.14 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","II"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.5a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches 80.. run scoreboard players set @s eqrLevel 5
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

execute if score @s eqrLevel matches ..3 run item replace entity @s enderchest.6 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6a"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 4 if score @s eqrPath matches 1 run item replace entity @s enderchest.15 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6a"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 5 if score @s eqrPath matches 1 run item replace entity @s enderchest.15 with trident{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6a"}']},eval:51,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 6.. if score @s eqrPath matches 1 run item replace entity @s enderchest.15 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["A","III"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.6a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches ..99 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches 100.. run scoreboard players set @s eqrLevel 6
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches 100.. run scoreboard players remove @s gold 100

# Path B (Tipped Arrows)
execute if score @s eqrLevel matches ..2 run item replace entity @s enderchest.22 with tipped_arrow{Potion:"weakness",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.4b"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 3 run item replace entity @s enderchest.22 with tipped_arrow{Potion:"weakness",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.4b"}']},eval:32,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 4.. if score @s eqrPath matches 2 run item replace entity @s enderchest.13 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","I"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.4b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players set @s eqrLevel 4
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players set @s eqrPath 2
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqrLevel matches ..3 run item replace entity @s enderchest.23 with tipped_arrow{Potion:"slowness",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.5b"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 4 if score @s eqrPath matches 2 run item replace entity @s enderchest.14 with tipped_arrow{Potion:"slowness",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.5b"}']},eval:42,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 5.. if score @s eqrPath matches 2 run item replace entity @s enderchest.14 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","II"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.5b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches 80.. run scoreboard players set @s eqrLevel 5
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

execute if score @s eqrLevel matches ..3 run item replace entity @s enderchest.24 with tipped_arrow{Potion:"poison",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6b"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 4 if score @s eqrPath matches 2 run item replace entity @s enderchest.15 with tipped_arrow{Potion:"poison",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6b"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 5 if score @s eqrPath matches 2 run item replace entity @s enderchest.15 with tipped_arrow{Potion:"poison",HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.6b"}']},eval:52,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 6.. if score @s eqrPath matches 2 run item replace entity @s enderchest.15 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.secondary","with":["B","III"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.6b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches ..99 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches 100.. run scoreboard players set @s eqrLevel 6
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches 100.. run scoreboard players remove @s gold 100

# End Punch
execute if score @s eqrLevel matches 4..5 run item replace entity @s enderchest.7 with bow{CustomModelData:2,HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.7a"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 6 run item replace entity @s enderchest.7 with bow{CustomModelData:2,HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.7a"}']},eval:71,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 7.. if score @s eqrPath2 matches 1 run item replace entity @s enderchest.16 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-A"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.7a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=71}] if score @s gold matches ..199 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=71}] if score @s gold matches 200.. run scoreboard players set @s eqrLevel 7
execute as @s[scores={tsEGUI_guiVal=71}] if score @s gold matches 200.. run scoreboard players set @s eqrPath2 1
execute as @s[scores={tsEGUI_guiVal=71}] if score @s gold matches 200.. run scoreboard players remove @s gold 200

# End Power
execute if score @s eqrLevel matches 4..5 run item replace entity @s enderchest.25 with bow{CustomModelData:1,HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.ranged.lvl.7b"}']},eval:-1,egui:1}
execute if score @s eqrLevel matches 6 run item replace entity @s enderchest.25 with bow{CustomModelData:1,HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.ranged.lvl.7b"}']},eval:72,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqrLevel matches 7.. if score @s eqrPath2 matches 2 run item replace entity @s enderchest.16 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.ranged.lvl.primary","with":["IV-B"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["200"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.ranged.lvl.7b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=72}] if score @s gold matches ..199 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=72}] if score @s gold matches 200.. run scoreboard players set @s eqrLevel 7
execute as @s[scores={tsEGUI_guiVal=72}] if score @s gold matches 200.. run scoreboard players set @s eqrPath2 2
execute as @s[scores={tsEGUI_guiVal=72}] if score @s gold matches 200.. run scoreboard players remove @s gold 200



# Reload Page
execute as @s[scores={tsEGUI_guiVal=1..800}] run function main:game/equipment/ranged
execute as @s[scores={tsEGUI_guiVal=1..800}] run scoreboard players set @s tsEGUI_guiSwitch 15


# clear if in lobby
execute if score game Stats matches 0 run clear @s