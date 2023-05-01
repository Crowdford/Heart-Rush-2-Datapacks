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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.main.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.description.1","color":"gray","italic":false}','{"translate":"menu.main.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.17 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.4 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.13 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.22 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

# global
item replace entity @s enderchest.10 with paper{eval:1,egui:1,display:{Name:'{"translate":"menu.arena.title","color":"gray","bold":true,"italic":false}',Lore:['{"translatet":"menu.main.arena","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 5

item replace entity @s enderchest.12 with music_disc_wait{eval:4,egui:1,display:{Name:'{"translate":"menu.options_hr","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.options","color":"gray","italic":false}']},HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=4}] run scoreboard players set @s tsEGUI_guiSwitch 4

# player
item replace entity @s enderchest.6 with gold_nugget{eval:2,egui:1,display:{Name:'{"translate":"menu.skills.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.skills","color":"gray","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=2}] run scoreboard players set @s tsEGUI_guiSwitch 2

item replace entity @s enderchest.14 with music_disc_stal{eval:3,egui:1,display:{Name:'{"translate":"menu.announcers.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.announcers","color":"gray","italic":false}']},HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 3

item replace entity @s enderchest.16 with shield{eval:5,egui:1,display:{Name:'{"translate":"menu.shield.main.title.alt","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.shield","color":"gray","italic":false}']},HideFlags:63}
execute as @s[scores={tsEGUI_guiVal=5}] run scoreboard players set @s tsEGUI_guiSwitch 6

# skull
data modify block 0 0 0 Items set value []
loot insert 0 0 0 loot application_cape:get/skull
data modify block 0 0 0 Items[0].tag.egui set value 1
data modify block 0 0 0 Items[0].tag.eval set value 6
data modify block 0 0 0 Items[0].tag.HideFlags set value 63
data modify block 0 0 0 Items[0].tag.display.Name set value '{"translate":"menu.personal.title","color":"gray","italic":false,"bold":true}'
data modify block 0 0 0 Items[0].tag.display.Lore set value ['{"translate":"menu.main.personal","color":"gray","italic":false}']
loot replace entity @s enderchest.24 1 mine 0 0 0
execute as @s[scores={tsEGUI_guiVal=6}] run scoreboard players set @s tsEGUI_guiSwitch 10