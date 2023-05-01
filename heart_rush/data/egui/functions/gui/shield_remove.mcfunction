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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.shield.remove.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.remove.description.1","color":"gray","italic":false}','{"translate":"menu.shield.remove.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.2 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.11 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.20 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{CustomModelData:1,eval:-247,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.6 with orange_stained_glass_pane{eval:-247,egui:1,display:{Name:'""'}}
scoreboard players set placeType Temp 1
function egui:gui/util/place_shield
item replace entity @s enderchest.15 with orange_stained_glass_pane{eval:-247,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:-1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
item replace entity @s enderchest.24 with orange_stained_glass_pane{eval:-247,egui:1,display:{Name:'""'}}
execute as @s[scores={tsEGUI_guiVal=-1}] run scoreboard players set @s tsEGUI_guiSwitch 6


function egui:gui/util/place_patterns
execute as @s[scores={tsEGUI_guiVal=1..1}] run scoreboard players operation @s bp1 = @s bp2
execute as @s[scores={tsEGUI_guiVal=1..2}] run scoreboard players operation @s bp2 = @s bp3
execute as @s[scores={tsEGUI_guiVal=1..3}] run scoreboard players operation @s bp3 = @s bp4
execute as @s[scores={tsEGUI_guiVal=1..4}] run scoreboard players operation @s bp4 = @s bp5
execute as @s[scores={tsEGUI_guiVal=1..5}] run scoreboard players operation @s bp5 = @s bp6
execute as @s[scores={tsEGUI_guiVal=1..6}] run scoreboard players operation @s bp6 = @s bp7
execute as @s[scores={tsEGUI_guiVal=1..7}] run scoreboard players operation @s bp7 = @s bp8
execute as @s[scores={tsEGUI_guiVal=1..8}] run scoreboard players set @s bp8 0
execute as @s[scores={tsEGUI_guiVal=1..8}] run scoreboard players set @s tsEGUI_guiSwitch 9