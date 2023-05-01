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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.personal.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.main.personal","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.17 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=1}] run tag @s remove menu.switch_options
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 1

# Shop Re-open
execute if score @s p.shop matches 1 run item replace entity @s enderchest.12 with kelp{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.personal.shop"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.personal.shop.1","color":"green","italic":false}]',Lore:['{"translate":"menu.personal.shop.desc.1","italic":false,"color":"green"}','{"translate":"menu.personal.shop.desc.2","italic":false,"color":"green"}']}}
execute if score @s p.shop matches 0 run item replace entity @s enderchest.12 with wheat{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.personal.shop"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.personal.shop.0","color":"red","italic":false}]',Lore:['{"translate":"menu.personal.shop.desc.1","italic":false,"color":"red"}','{"translate":"menu.personal.shop.desc.2","italic":false,"color":"red"}']}}
execute as @s[scores={tsEGUI_guiVal=20}] run scoreboard players add @s p.shop 1
execute as @s[scores={tsEGUI_guiVal=20}] run scoreboard players operation @s p.shop %= 2 Const


# Shield Default
execute if score @s p.shield matches 1 run item replace entity @s enderchest.14 with kelp{eval:21,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.personal.shield"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.personal.shield.1","color":"green","italic":false}]',Lore:['{"translate":"menu.personal.shield.desc.1","italic":false,"color":"green"}','{"translate":"menu.personal.shield.desc.2","italic":false,"color":"green"}']}}
execute if score @s p.shield matches 0 run item replace entity @s enderchest.14 with wheat{eval:21,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.personal.shield"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.personal.shield.0","color":"red","italic":false}]',Lore:['{"translate":"menu.personal.shield.desc.1","italic":false,"color":"red"}','{"translate":"menu.personal.shield.desc.2","italic":false,"color":"red"}']}}
execute as @s[scores={tsEGUI_guiVal=21}] run scoreboard players add @s p.shield 1
execute as @s[scores={tsEGUI_guiVal=21}] run scoreboard players operation @s p.shield %= 2 Const

