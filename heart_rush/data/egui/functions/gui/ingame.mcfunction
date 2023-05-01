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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.ingame.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.description.1","color":"gray","italic":false}','{"translate":"menu.ingame.description.2","color":"gray","italic":false}']}}
item replace entity @s[team=red] enderchest.0 with name_tag{eval:0,egui:1,display:{Name:'{"translate":"menu.ingame.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.description.1","color":"gray","italic":false}','{"translate":"menu.ingame.description.2","color":"gray","italic":false}']}}
item replace entity @s[team=blue] enderchest.0 with rabbit_foot{eval:0,egui:1,display:{Name:'{"translate":"menu.ingame.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.description.1","color":"gray","italic":false}','{"translate":"menu.ingame.description.2","color":"gray","italic":false}']}}
item replace entity @s[team=green] enderchest.0 with book{eval:0,egui:1,display:{Name:'{"translate":"menu.ingame.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.description.1","color":"gray","italic":false}','{"translate":"menu.ingame.description.2","color":"gray","italic":false}']}}
item replace entity @s[team=yellow] enderchest.0 with egg{eval:0,egui:1,display:{Name:'{"translate":"menu.ingame.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.description.1","color":"gray","italic":false}','{"translate":"menu.ingame.description.2","color":"gray","italic":false}']}}
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
item replace entity @s[team=red] enderchest.26 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.26 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.26 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.26 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.4 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.4 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.4 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.4 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.4 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.13 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.13 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.13 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.13 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.13 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.13 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.22 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=red] enderchest.22 with red_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=blue] enderchest.22 with blue_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=green] enderchest.22 with lime_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s[team=yellow] enderchest.22 with yellow_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.2 with iron_helmet{CustomModelData:1,HideFlags:63,eval:4,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.armor","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=4}] run scoreboard players set @s tsEGUI_guiSwitch 16

item replace entity @s enderchest.10 with diamond_sword{HideFlags:63,eval:1,egui:1,display:{Name:'{"translate":"menu.melee.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.melee","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 14

item replace entity @s enderchest.12 with green_dye{eval:3,egui:1,display:{Name:'{"translate":"menu.ranged.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.ranged","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 15

item replace entity @s enderchest.20 with item_frame{eval:5,egui:1,display:{Name:'{"translate":"menu.item.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.ingame.item","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=5}] run scoreboard players set @s tsEGUI_guiSwitch 13

item replace entity @s enderchest.15 with gold_nugget{eval:2,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.skills","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=2}] run scoreboard players set @s tsEGUI_guiSwitch 12
