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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.announcers.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.announcers.description.1","color":"gray","italic":false}','{"translate":"menu.announcers.description.2","color":"gray","italic":false}','{"translate":"menu.announcers.description.3","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.17 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 1


execute if score @s announcer matches 5 run item replace entity @s enderchest.1 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 3 run item replace entity @s enderchest.2 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 4 run item replace entity @s enderchest.3 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 2 run item replace entity @s enderchest.4 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 6 run item replace entity @s enderchest.5 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 7 run item replace entity @s enderchest.6 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score @s announcer matches 8 run item replace entity @s enderchest.7 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}


item replace entity @s enderchest.10 with minecraft:music_disc_stal{HideFlags:63,display:{Name:'{"translate":"menu.announcers.5","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"gibbs","color":"gray"}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.5.description.1"}','{"color":"gray","italic":false,"translate":"menu.announcers.5.description.2"}','{"color":"gray","italic":false,"translate":"menu.announcers.5.description.3"}']},eval:5,egui:1}
item replace entity @s enderchest.11 with minecraft:music_disc_mellohi{HideFlags:63,display:{Name:'{"translate":"menu.announcers.3","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"translate":"%s & %s","color":"aqua","with":["Asometric","Suso"]}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.3.description.1"}','{"color":"gray","italic":false,"translate":"menu.announcers.3.description.2"}']},eval:3,egui:1}
item replace entity @s enderchest.12 with minecraft:music_disc_blocks{HideFlags:63,display:{Name:'{"translate":"menu.announcers.4","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"CarrotPlayz","color":"gold"}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.4.description.1"}','{"color":"gray","italic":false,"translate":"menu.announcers.4.description.2"}','{"color":"gray","italic":false,"translate":"menu.announcers.4.description.3"}']},eval:4,egui:1}
item replace entity @s enderchest.13 with minecraft:music_disc_chirp{HideFlags:63,display:{Name:'{"translate":"menu.announcers.2","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"IMKevin117","color":"green"}]}','','{"color":"gray","strikethrough":true,"italic":false,"translate":"menu.announcers.2.description.1"}','{"color":"gray","italic":false,"translate":"menu.announcers.2.description.2"}']},eval:2,egui:1}
item replace entity @s enderchest.14 with minecraft:music_disc_far{HideFlags:63,display:{Name:'{"translate":"menu.announcers.6","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"BartTheBart","color":"dark_gray"}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.6.description.1"}']},eval:6,egui:1}
item replace entity @s enderchest.15 with minecraft:music_disc_mall{HideFlags:63,display:{Name:'{"translate":"menu.announcers.7","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"McTsts","color":"green"}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.7.description.1"}']},eval:7,egui:1}
item replace entity @s enderchest.16 with minecraft:music_disc_strad{HideFlags:63,display:{Name:'{"translate":"menu.announcers.8","color":"gray","italic":false,"bold":true}',Lore:['{"color":"gray","italic":false,"translate":"%1$s: %2$s","with":[{"translate":"menu.announcers.va","bold":true},{"text":"Ds43m","color":"dark_aqua"}]}','','{"color":"gray","italic":false,"translate":"menu.announcers.8.description.1"}','{"color":"gray","italic":false,"translate":"menu.announcers.8.description.2"}','{"color":"gray","italic":false,"translate":"menu.announcers.8.description.3"}']},eval:8,egui:1}
execute as @s[scores={tsEGUI_guiVal=2..8}] run scoreboard players operation @s announcer = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=2..8}] run function main:announcers/selected