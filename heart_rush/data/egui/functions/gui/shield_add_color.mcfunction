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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.shield.add_color.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.add_color.description.1","color":"gray","italic":false}','{"translate":"menu.shield.add_color.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{CustomModelData:1,eval:0,egui:1,display:{Name:'""'}}
scoreboard players set placeType Temp 1
function egui:gui/util/place_shield
item replace entity @s enderchest.26 with bone_meal{eval:-1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=-1}] run scoreboard players set @s bpc 0
execute as @s[scores={tsEGUI_guiVal=-1}] run scoreboard players set @s tsEGUI_guiSwitch 7

item replace entity @s enderchest.6 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.15 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.24 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.1 with minecraft:white_dye{eval:1,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.1","italic":false,"color":"white"}'}}
item replace entity @s enderchest.2 with minecraft:light_gray_dye{CustomModelData:1,eval:2,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.2","italic":false,"color":"#cfcfcf"}'}}
item replace entity @s enderchest.3 with minecraft:gray_dye{CustomModelData:1,eval:3,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.3","italic":false,"color":"#949494"}'}}
item replace entity @s enderchest.4 with minecraft:black_dye{eval:4,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.4","italic":false,"color":"#5c5c5c"}'}}

item replace entity @s enderchest.10 with minecraft:purple_dye{CustomModelData:1,eval:10,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.10","italic":false,"color":"#a35fd4"}'}}
item replace entity @s enderchest.11 with minecraft:magenta_dye{CustomModelData:1,eval:11,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.11","italic":false,"color":"light_purple"}'}}
item replace entity @s enderchest.12 with minecraft:pink_dye{CustomModelData:1,eval:12,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.12","italic":false,"color":"#f3bdff"}'}}
item replace entity @s enderchest.13 with minecraft:orange_dye{CustomModelData:1,eval:13,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.13","italic":false,"color":"gold"}'}}

item replace entity @s enderchest.19 with minecraft:cyan_dye{CustomModelData:1,eval:19,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.19","italic":false,"color":"#3290b3"}'}}
item replace entity @s enderchest.20 with minecraft:light_blue_dye{CustomModelData:1,eval:20,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.20","italic":false,"color":"#87bfed"}'}}
item replace entity @s enderchest.21 with minecraft:brown_dye{eval:21,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.21","italic":false,"color":"#755601"}'}}
item replace entity @s enderchest.22 with minecraft:green_dye{CustomModelData:1,eval:22,egui:1,HideFlags:127,display:{Name:'{"translate":"menu.shield.color.22","italic":false,"color":"dark_green"}'}}



execute as @s[scores={tsEGUI_guiVal=1..5}] run scoreboard players operation @s bpc = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=10..14}] run scoreboard players operation @s bpc = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=19..23}] run scoreboard players operation @s bpc = @s tsEGUI_guiVal

scoreboard players operation slot Temp = @s bpc
execute if score @s bpc matches 1.. run function egui:gui/util/copy_banner


scoreboard players operation @s bp = @s bpc
scoreboard players operation @s bp *= 100 Const
scoreboard players operation @s bp += @s bpp
function egui:gui/util/place_shield

execute if score @s bpc matches 1.. run item replace entity @s enderchest.25 with prismarine_crystals{eval:100,egui:1,display:{Name:'{"translate":"menu.confirm","italic":false,"color":"green"}'}}
execute as @s[scores={tsEGUI_guiVal=100}] run function egui:gui/util/pattern_push
execute as @s[scores={tsEGUI_guiVal=100}] run scoreboard players set @s bpc 0
execute as @s[scores={tsEGUI_guiVal=100}] run scoreboard players set @s bpp 0
execute as @s[scores={tsEGUI_guiVal=100}] run scoreboard players set @s bp 0
execute as @s[scores={tsEGUI_guiVal=100}] run scoreboard players set @s tsEGUI_guiSwitch 6
execute as @s[scores={tsEGUI_guiVal=100}] run tag @s remove patternPush