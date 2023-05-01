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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.shield.add_pattern.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.shield.add_pattern.description.1","color":"gray","italic":false}','{"translate":"menu.shield.add_pattern.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{CustomModelData:1,eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:-1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=-1}] run scoreboard players set @s bpp 0
execute as @s[scores={tsEGUI_guiVal=-1}] run scoreboard players set @s tsEGUI_guiSwitch 6

item replace entity @s enderchest.6 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.15 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.24 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.1 with minecraft:player_head{eval:1,egui:1,pattern:["pig"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.1","italic":false,"color":"white"}'},SkullOwner:"mhf_piglin"}
item replace entity @s enderchest.2 with minecraft:player_head{eval:2,egui:1,pattern:["glb"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.2","italic":false,"color":"white"}'},SkullOwner:{Id:[I;216713310,362631069,-1581070164,-562483421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjFkZDRmZTRhNDI5YWJkNjY1ZGZkYjNlMjEzMjFkNmVmYTZhNmI1ZTdiOTU2ZGI5YzVkNTljOWVmYWIyNSJ9fX0="}]}}}
item replace entity @s enderchest.3 with minecraft:oxeye_daisy{eval:3,egui:1,pattern:["flo"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.3","italic":false,"color":"white"}'}}
item replace entity @s enderchest.4 with minecraft:skeleton_skull{eval:4,egui:1,pattern:["sku"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.4","italic":false,"color":"white"}'}}
item replace entity @s enderchest.5 with minecraft:player_head{eval:5,egui:1,pattern:["cre"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.5","italic":false,"color":"white"}'},SkullOwner:"mhf_creeper"}
item replace entity @s enderchest.10 with minecraft:brick{eval:10,egui:1,pattern:["bri"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.10","italic":false,"color":"white"}'}}
item replace entity @s enderchest.11 with minecraft:heart_of_the_sea{eval:11,egui:1,pattern:["mc"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.11","italic":false,"color":"white"}'}}
item replace entity @s enderchest.12 with minecraft:purple_dye{eval:12,egui:1,pattern:["mr"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.12","italic":false,"color":"white"}'}}
item replace entity @s enderchest.13 with minecraft:golden_apple{eval:13,egui:1,pattern:["moj"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.13","italic":false,"color":"white"}'}}
item replace entity @s enderchest.14 with minecraft:twisting_vines{eval:14,egui:1,pattern:["cbo"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.14","italic":false,"color":"white"}'}}
item replace entity @s enderchest.19 with minecraft:painting{eval:19,egui:1,pattern:["bo"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.19","italic":false,"color":"white"}'}}
item replace entity @s enderchest.20 with minecraft:flower_banner_pattern{eval:20,egui:1,pattern:["gra"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.20","italic":false,"color":"white"}'}}
item replace entity @s enderchest.21 with minecraft:netherite_scrap{eval:21,egui:1,pattern:["bts","tts"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.21","italic":false,"color":"white"}'}}
item replace entity @s enderchest.22 with minecraft:sugar{eval:22,egui:1,pattern:["bt","tt"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.22","italic":false,"color":"white"}'}}
item replace entity @s enderchest.23 with minecraft:scute{eval:23,egui:1,pattern:["ss"],HideFlags:127,display:{Name:'{"translate":"menu.shield.pattern.23","italic":false,"color":"white"}'}}

execute as @s[scores={tsEGUI_guiVal=1..23}] run scoreboard players operation @s bpp = @s tsEGUI_guiVal

scoreboard players operation slot Temp = @s bpp
execute if score @s bpp matches 1.. run function egui:gui/util/copy_banner

scoreboard players operation @s bp = @s bpp
scoreboard players set placeType Temp 1
function egui:gui/util/place_shield

execute if score @s bp matches 1.. run item replace entity @s enderchest.25 with prismarine_crystals{eval:100,egui:1,display:{Name:'{"translate":"menu.confirm","italic":false,"color":"green"}'}}
execute as @s[scores={tsEGUI_guiVal=100}] run scoreboard players set @s tsEGUI_guiSwitch 8