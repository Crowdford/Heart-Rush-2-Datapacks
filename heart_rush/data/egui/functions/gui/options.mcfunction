execute if score starting Stats matches 1 run scoreboard players set @s tsEGUI_guiSwitch 1

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
item replace entity @s enderchest.0 with bone{eval:0,egui:1,display:{Name:'{"translate":"menu.options_hr","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.options.description.1","color":"gray","italic":false}','{"translate":"menu.options.description.2","color":"gray","italic":false}']}}
item replace entity @s enderchest.9 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.18 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.17 with orange_stained_glass_pane{eval:0,egui:1,display:{Name:'""'}}
item replace entity @s enderchest.26 with bone_meal{eval:1,egui:1,display:{Name:'{"translate":"menu.return","color":"red","bold":true,"italic":false}'}}
execute as @s[scores={tsEGUI_guiVal=1}] run tag @s remove menu.switch_options
execute as @s[scores={tsEGUI_guiVal=1}] run scoreboard players set @s tsEGUI_guiSwitch 1

# Lives
execute if score lives options matches 3 run item replace entity @s enderchest.2 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score lives options matches 4 run item replace entity @s enderchest.3 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score lives options matches 5 run item replace entity @s enderchest.4 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score lives options matches 7 run item replace entity @s enderchest.5 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
execute if score lives options matches 10 run item replace entity @s enderchest.6 with sugar{eval:0,egui:1,display:{Name:'""'},CustomModelData:1}
item replace entity @s enderchest.11 with minecraft:blue_concrete{HideFlags:63,display:{Name:'{"translate":"menu.options.lives","with":["3"],"color":"blue","bold":true,"italic":false}',Lore:['{"translate":"menu.options.lives.desc","italic":false,"color":"blue"}']},eval:3,egui:1}
item replace entity @s enderchest.12 with minecraft:light_blue_concrete{HideFlags:63,display:{Name:'{"translate":"menu.options.lives","with":["4"],"color":"aqua","bold":true,"italic":false}',Lore:['{"translate":"menu.options.lives.desc","italic":false,"color":"aqua"}']},eval:4,egui:1}
item replace entity @s enderchest.13 with minecraft:lime_concrete{HideFlags:63,display:{Name:'{"translate":"menu.options.lives","with":["5"],"color":"green","bold":true,"italic":false}',Lore:['{"color":"green","italic":false,"translate":"menu.options.lives.default"}','{"translate":"menu.options.lives.desc","italic":false,"color":"green"}']},eval:5,egui:1}
item replace entity @s enderchest.14 with minecraft:orange_concrete{HideFlags:63,display:{Name:'{"translate":"menu.options.lives","with":["7"],"color":"gold","bold":true,"italic":false}',Lore:['{"translate":"menu.options.lives.desc","italic":false,"color":"gold"}']},eval:7,egui:1}
item replace entity @s enderchest.15 with minecraft:red_concrete{HideFlags:63,display:{Name:'{"translate":"menu.options.lives","with":["10"],"color":"red","bold":true,"italic":false}',Lore:['{"translate":"menu.options.lives.desc","italic":false,"color":"red"}']},eval:10,egui:1}
execute as @s[scores={tsEGUI_guiVal=3..10}] run scoreboard players operation lives options = @s tsEGUI_guiVal
execute as @s[scores={tsEGUI_guiVal=3..10}] run scoreboard players operation max_lives options = lives options
execute as @s[scores={tsEGUI_guiVal=3..10}] run scoreboard players add max_lives options 2
execute as @s[scores={tsEGUI_guiVal=3..10}] if score lives options matches 03 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.lives.alt","color":"gold"},{"bold":true,"text":"3","color":"blue"}]}]
execute as @s[scores={tsEGUI_guiVal=3..10}] if score lives options matches 04 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.lives.alt","color":"gold"},{"bold":true,"text":"4","color":"aqua"}]}]
execute as @s[scores={tsEGUI_guiVal=3..10}] if score lives options matches 05 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.lives.alt","color":"gold"},{"bold":true,"text":"5","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=3..10}] if score lives options matches 07 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.lives.alt","color":"gold"},{"bold":true,"text":"7","color":"gold"}]}]
execute as @s[scores={tsEGUI_guiVal=3..10}] if score lives options matches 10 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.lives.alt","color":"gold"},{"bold":true,"text":"10","color":"red"}]}]
execute as @s[scores={tsEGUI_guiVal=3..10}] run scoreboard players add @s spam 50

# Gold
execute if score gold options matches 1 run item replace entity @s enderchest.20 with kelp{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.gold"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.options.gold.1","color":"green","italic":false}]',Lore:['{"translate":"menu.options.gold.desc","italic":false,"color":"green"}']}}
execute if score gold options matches 2 run item replace entity @s enderchest.20 with fermented_spider_eye{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.gold"}],"color":"yellow","bold":true,"italic":false},{"translate":"menu.options.gold.2","color":"gold","italic":false}]',Lore:['{"translate":"menu.options.gold.desc","italic":false,"color":"gold"}']}}
execute if score gold options matches 3 run item replace entity @s enderchest.20 with magma_cream{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.gold"}],"color":"gold","bold":true,"italic":false},{"translate":"menu.options.gold.3","color":"yellow","italic":false}]',Lore:['{"translate":"menu.options.gold.desc","italic":false,"color":"yellow"}']}}
execute if score gold options matches 0 run item replace entity @s enderchest.20 with wheat{eval:20,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.gold"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.options.gold.0","color":"red","italic":false}]',Lore:['{"translate":"menu.options.gold.desc","italic":false,"color":"red"}']}}
execute as @s[scores={tsEGUI_guiVal=20}] run scoreboard players add gold options 1
execute as @s[scores={tsEGUI_guiVal=20}] run scoreboard players operation gold options %= 4 Const
execute as @s[scores={tsEGUI_guiVal=20}] if score gold options matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.gold","color":"gold"},{"bold":true,"translate":"menu.options.gold.1","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=20}] if score gold options matches 2 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.gold","color":"gold"},{"bold":true,"translate":"menu.options.gold.2","color":"yellow"}]}]
execute as @s[scores={tsEGUI_guiVal=20}] if score gold options matches 3 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.gold","color":"gold"},{"bold":true,"translate":"menu.options.gold.3","color":"gold"}]}]
execute as @s[scores={tsEGUI_guiVal=20}] if score gold options matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.gold","color":"gold"},{"bold":true,"translate":"menu.options.gold.0","color":"red"}]}]
execute as @s[scores={tsEGUI_guiVal=20}] run scoreboard players add @s spam 50

# Defenseless Mode
execute if score defenseless options matches 1 run item replace entity @s enderchest.24 with kelp{eval:21,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.defenseless"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.options.enabled","color":"green","italic":false}]',Lore:['{"translate":"menu.options.defenseless.1","italic":false,"color":"green"}','{"translate":"menu.options.defenseless.2","italic":false,"color":"green"}','{"translate":"menu.options.defenseless.3","italic":false,"color":"green"}','{"translate":"menu.options.defenseless.4","italic":false,"color":"green"}','{"translate":"menu.options.defenseless.5","italic":false,"color":"green"}']}}
execute if score defenseless options matches 0 run item replace entity @s enderchest.24 with wheat{eval:21,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.defenseless"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.options.disabled","color":"red","italic":false}]',Lore:['{"translate":"menu.options.defenseless.1","italic":false,"color":"red"}','{"translate":"menu.options.defenseless.2","italic":false,"color":"red"}','{"translate":"menu.options.defenseless.3","italic":false,"color":"red"}','{"translate":"menu.options.defenseless.4","italic":false,"color":"red"}','{"translate":"menu.options.defenseless.5","italic":false,"color":"red"}']}}
execute as @s[scores={tsEGUI_guiVal=21}] run scoreboard players add defenseless options 1
execute as @s[scores={tsEGUI_guiVal=21}] run scoreboard players operation defenseless options %= 2 Const
execute as @s[scores={tsEGUI_guiVal=21}] if score defenseless options matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.defenseless","color":"gold"},{"bold":true,"translate":"menu.options.enabled","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=21}] if score defenseless options matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.defenseless","color":"gold"},{"bold":true,"translate":"menu.options.disabled","color":"red"}]}]
execute as @s[scores={tsEGUI_guiVal=21}] run scoreboard players add @s spam 50

# Shopping Pause
execute if score pause options matches 1 run item replace entity @s enderchest.21 with kelp{eval:22,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.pause"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.options.enabled","color":"green","italic":false}]',Lore:['{"translate":"menu.options.pause.1","color":"green","italic":false}','{"translate":"menu.options.pause.2","color":"green","italic":false}','{"translate":"menu.options.pause.3","color":"green","italic":false}','{"translate":"menu.options.pause.4","color":"green","italic":false}']}}
execute if score pause options matches 0 run item replace entity @s enderchest.21 with wheat{eval:22,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.pause"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.options.disabled","color":"red","italic":false}]',Lore:['{"translate":"menu.options.pause.1","color":"red","italic":false}','{"translate":"menu.options.pause.2","color":"red","italic":false}','{"translate":"menu.options.pause.3","color":"red","italic":false}','{"translate":"menu.options.pause.4","color":"red","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=22}] run scoreboard players add pause options 1
execute as @s[scores={tsEGUI_guiVal=22}] run scoreboard players operation pause options %= 2 Const
execute as @s[scores={tsEGUI_guiVal=22}] if score pause options matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.pause","color":"gold"},{"bold":true,"translate":"menu.options.enabled","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=22}] if score pause options matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.pause","color":"gold"},{"bold":true,"translate":"menu.options.disabled","color":"red"}]}]
execute as @s[scores={tsEGUI_guiVal=22}] run scoreboard players add @s spam 50

# Locked Mode
execute if score locked options matches 1 run item replace entity @s enderchest.23 with kelp{eval:23,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.locked"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.options.enabled","color":"green","italic":false}]',Lore:['{"translate":"menu.options.locked.1","color":"green","italic":false}','{"translate":"menu.options.locked.2","color":"green","italic":false}','{"translate":"menu.options.locked.3","color":"green","italic":false}','{"translate":"menu.options.locked.4","color":"green","italic":false}']}}
execute if score locked options matches 0 run item replace entity @s enderchest.23 with wheat{eval:23,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.locked"}],"color":"dark_red","bold":true,"italic":false},{"translate":"menu.options.disabled","color":"red","italic":false}]',Lore:['{"translate":"menu.options.locked.1","color":"red","italic":false}','{"translate":"menu.options.locked.2","color":"red","italic":false}','{"translate":"menu.options.locked.3","color":"red","italic":false}','{"translate":"menu.options.locked.4","color":"red","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=23}] run scoreboard players add locked options 1
execute as @s[scores={tsEGUI_guiVal=23}] run scoreboard players operation locked options %= 2 Const
execute as @s[scores={tsEGUI_guiVal=23}] if score locked options matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.locked","color":"gold"},{"bold":true,"translate":"menu.options.enabled","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=23}] if score locked options matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.locked","color":"gold"},{"bold":true,"translate":"menu.options.disabled","color":"red"}]}]
execute as @s[scores={tsEGUI_guiVal=23}] run scoreboard players add @s spam 50

# Game Mode
#execute if score mode options matches 1 run item replace entity @s enderchest.24 with kelp{eval:24,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.mode"}],"color":"dark_green","bold":true,"italic":false},{"translate":"menu.options.mode.normal","color":"green","italic":false}]',Lore:['{"translate":"menu.options.mode.normal.1","color":"green","italic":false}','{"translate":"menu.options.mode.normal.2","color":"green","italic":false}']}}
#execute if score mode options matches 2 run item replace entity @s enderchest.24 with ghast_tear{eval:24,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.mode"}],"color":"dark_aqua","bold":true,"italic":false},{"translate":"menu.options.mode.classic","color":"aqua","italic":false}]',Lore:['{"translate":"menu.options.mode.classic.1","color":"aqua","italic":false}','{"translate":"menu.options.mode.classic.2","color":"aqua","italic":false}']}}
#execute if score mode options matches 0 run item replace entity @s enderchest.24 with fermented_spider_eye{eval:24,egui:1,display:{Name:'["",{"translate":"%s: ","with":[{"translate":"menu.options.mode"}],"color":"gold","bold":true,"italic":false},{"translate":"menu.options.mode.ck","color":"yellow","italic":false}]',Lore:['{"translate":"menu.options.mode.ck.1","color":"yellow","italic":false}','{"translate":"menu.options.mode.ck.2","color":"yellow","italic":false}']}}
execute as @s[scores={tsEGUI_guiVal=24}] run scoreboard players add mode options 1
execute as @s[scores={tsEGUI_guiVal=24}] run scoreboard players operation mode options %= 3 Const
execute as @s[scores={tsEGUI_guiVal=24}] run scoreboard players set @s tsEGUI_guiSwitch 2
execute as @s[scores={tsEGUI_guiVal=24}] run tag @s add menu.switch_options
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 1 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.mode","color":"gold"},{"bold":true,"translate":"menu.options.mode.normal","color":"green"}]}]
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 1 run schedule function main:game/mode/default 10t
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 2 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.mode","color":"gold"},{"bold":true,"translate":"menu.options.mode.classic","color":"aqua"}]}]
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 2 run schedule function main:game/mode/classic 10t
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 0 run tellraw @a [{"text":" |  ","color":"gray"},{"translate":"menu.options.change","color":"gray","with":[{"selector":"@s"},{"translate":"menu.options.mode","color":"gold"},{"bold":true,"translate":"menu.options.mode.ck","color":"yellow"}]}]
execute as @s[scores={tsEGUI_guiVal=24}] if score mode options matches 0 run schedule function main:game/mode/ck 10t
execute as @s[scores={tsEGUI_guiVal=24}] run scoreboard players add @s spam 100