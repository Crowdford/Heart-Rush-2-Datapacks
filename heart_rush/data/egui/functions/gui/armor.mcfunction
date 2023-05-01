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
item replace entity @s enderchest.0 with bone{eval:-1000,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.armor.description.1","color":"gray","italic":false}','{"translate":"menu.armor.description.2","color":"gray","italic":false}','{"translate":"menu.armor.description.3","color":"gray","italic":false}','{"translate":"menu.armor.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=red] enderchest.0 with name_tag{eval:-1000,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.armor.description.1","color":"gray","italic":false}','{"translate":"menu.armor.description.2","color":"gray","italic":false}','{"translate":"menu.armor.description.3","color":"gray","italic":false}','{"translate":"menu.armor.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=blue] enderchest.0 with rabbit_foot{eval:-1000,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.armor.description.1","color":"gray","italic":false}','{"translate":"menu.armor.description.2","color":"gray","italic":false}','{"translate":"menu.armor.description.3","color":"gray","italic":false}','{"translate":"menu.armor.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=green] enderchest.0 with book{eval:-1000,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.armor.description.1","color":"gray","italic":false}','{"translate":"menu.armor.description.2","color":"gray","italic":false}','{"translate":"menu.armor.description.3","color":"gray","italic":false}','{"translate":"menu.armor.description.4","color":"gray","italic":false}']}}
item replace entity @s[team=yellow] enderchest.0 with egg{eval:-1000,egui:1,display:{Name:'{"translate":"menu.armor.title","color":"gray","bold":true,"italic":false}',Lore:['{"translate":"menu.armor.description.1","color":"gray","italic":false}','{"translate":"menu.armor.description.2","color":"gray","italic":false}','{"translate":"menu.armor.description.3","color":"gray","italic":false}','{"translate":"menu.armor.description.4","color":"gray","italic":false}']}}
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
execute if score @s eqaLevel matches 1.. run item replace entity @s[team=red] enderchest.18 with tropical_fish_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqaLevel matches 1.. run item replace entity @s[team=blue] enderchest.18 with pufferfish_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqaLevel matches 1.. run item replace entity @s[team=green] enderchest.18 with salmon_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute if score @s eqaLevel matches 1.. run item replace entity @s[team=yellow] enderchest.18 with cod_bucket{eval:1001,egui:1,display:{Name:'{"translate":"menu.shop.sell","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.1"}','{"color":"aqua","italic":false,"translate":"menu.shop.sell.description.2"}']}}
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 1 run scoreboard players add @s gold 20
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 2 run scoreboard players add @s gold 40
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 3 run scoreboard players add @s gold 60
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 4 run scoreboard players add @s gold 60
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 5 run scoreboard players add @s gold 60
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 6 run scoreboard players add @s gold 80
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 7 run scoreboard players add @s gold 100
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 4 run function main:game/equipment/remove_jump_boost_armor
execute as @s[scores={tsEGUI_guiVal=1001}] if score @s eqaLevel matches 4 run scoreboard players set @s eqaPath 0
execute as @s[scores={tsEGUI_guiVal=1001}] run scoreboard players remove @s eqaLevel 1
execute as @s[scores={tsEGUI_guiVal=1001}] run function main:game/equipment/armor
execute as @s[scores={tsEGUI_guiVal=1001}] run scoreboard players set @s armorMove -10
execute as @s[scores={tsEGUI_guiVal=1001}] run tag @s add armorUpdate
execute as @s[scores={tsEGUI_guiVal=1001}] run scoreboard players set @s tsEGUI_guiSwitch 16

# Cant be bought
execute as @s[scores={tsEGUI_guiVal=-1}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1

# Disable Shield
execute if score @s eqaLevel matches 5.. if score @s eqs matches 1 run item replace entity @s enderchest.1 with iron_ingot{HideFlags:63,display:{Name:'{"translate":"menu.armor.shield.disable","color":"gray","italic":false,"bold":true}',Lore:['{"translate":"menu.armor.shield.disable.info.1","color":"gray","italic":false}','{"color":"gray","italic":false,"translate":"menu.armor.shield.disable.info.2"}']},eval:99,egui:1}
execute if score @s eqaLevel matches 5.. if score @s eqs matches 0 run item replace entity @s enderchest.1 with diamond_hoe{CustomModelData:11,HideFlags:63,display:{Name:'{"translate":"menu.armor.shield.enable","color":"gray","italic":false,"bold":true}',Lore:['{"translate":"menu.armor.shield.enable.info.1","color":"gray","italic":false}','{"color":"gray","italic":false,"translate":"menu.armor.shield.enable.info.2"}']},eval:99,egui:1}
execute as @s[scores={tsEGUI_guiVal=99}] run scoreboard players add @s eqs 1
execute as @s[scores={tsEGUI_guiVal=99}] run scoreboard players operation @s eqs %= 2 Const
execute as @s[scores={tsEGUI_guiVal=99}] run tag @s add armorUpdate

# Root 
execute if score @s eqaLevel matches ..-1 run item replace entity @s enderchest.10 with chainmail_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["20"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet2","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.1"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 0 run item replace entity @s enderchest.10 with chainmail_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["I"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["20"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.1"}']},eval:1,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 1.. run item replace entity @s enderchest.10 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["I"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["20"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.1"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches ..19 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches 20.. run scoreboard players set @s eqaLevel 1
execute as @s[scores={tsEGUI_guiVal=1}] if score @s gold matches 20.. run scoreboard players remove @s gold 20

execute if score @s eqaLevel matches ..0 run item replace entity @s enderchest.11 with chainmail_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["40"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.2"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 1 run item replace entity @s enderchest.11 with chainmail_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["II"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["40"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.2"}']},eval:2,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 2.. run item replace entity @s enderchest.11 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["II"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["40"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.2"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches ..39 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 40.. run scoreboard players set @s eqaLevel 2
execute as @s[scores={tsEGUI_guiVal=2}] if score @s gold matches 40.. run scoreboard players remove @s gold 40

execute if score @s eqaLevel matches ..1 run item replace entity @s enderchest.12 with chainmail_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.3"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 2 run item replace entity @s enderchest.12 with chainmail_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["III"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.3"}']},eval:3,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 3.. run item replace entity @s enderchest.12 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["III"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.3"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 60.. run scoreboard players set @s eqaLevel 3
execute as @s[scores={tsEGUI_guiVal=3}] if score @s gold matches 60.. run scoreboard players remove @s gold 60


# Path A (Projectile Protection)
execute if score @s eqaLevel matches ..2 run item replace entity @s enderchest.4 with golden_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.4a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 3 run item replace entity @s enderchest.4 with golden_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.4a"}']},eval:31,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 4.. if score @s eqaPath matches 1 run item replace entity @s enderchest.13 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-A"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.4a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players set @s eqaLevel 4
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players set @s eqaPath 1
execute as @s[scores={tsEGUI_guiVal=31}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqaLevel matches ..3 run item replace entity @s enderchest.5 with iron_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.5a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4 if score @s eqaPath matches 1 run item replace entity @s enderchest.14 with iron_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.5a"}']},eval:41,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 5.. if score @s eqaPath matches 1 run item replace entity @s enderchest.14 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-A"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.5a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches 60.. run scoreboard players set @s eqaLevel 5
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches 60.. if score @s p.shield matches 0 run scoreboard players set @s eqs 0
execute as @s[scores={tsEGUI_guiVal=41}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqaLevel matches ..3 run item replace entity @s enderchest.6 with iron_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.6a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4 if score @s eqaPath matches 1 run item replace entity @s enderchest.15 with iron_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.6a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 5 if score @s eqaPath matches 1 run item replace entity @s enderchest.15 with iron_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-A"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.6a"}']},eval:51,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 6.. if score @s eqaPath matches 1 run item replace entity @s enderchest.15 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-A"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.6a"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches 80.. run scoreboard players set @s eqaLevel 6
execute as @s[scores={tsEGUI_guiVal=51}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

# Path B (Blast Protection)
execute if score @s eqaLevel matches ..2 run item replace entity @s enderchest.22 with golden_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.4b"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 3 run item replace entity @s enderchest.22 with golden_leggings{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.4b"}']},eval:32,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 4.. if score @s eqaPath matches 2 run item replace entity @s enderchest.13 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["IV-B"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.4b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players set @s eqaLevel 4
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players set @s eqaPath 2
execute as @s[scores={tsEGUI_guiVal=32}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqaLevel matches ..3 run item replace entity @s enderchest.23 with iron_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.5b"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4 if score @s eqaPath matches 2 run item replace entity @s enderchest.14 with iron_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.5b"}']},eval:42,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 5.. if score @s eqaPath matches 2 run item replace entity @s enderchest.14 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["V-B"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["60"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.5b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches ..59 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches 60.. run scoreboard players set @s eqaLevel 5
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches 60.. if score @s p.shield matches 0 run scoreboard players set @s eqs 0
execute as @s[scores={tsEGUI_guiVal=42}] if score @s gold matches 60.. run scoreboard players remove @s gold 60

execute if score @s eqaLevel matches ..3 run item replace entity @s enderchest.24 with iron_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.6b"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4 if score @s eqaPath matches 2 run item replace entity @s enderchest.15 with iron_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.6b"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 5 if score @s eqaPath matches 2 run item replace entity @s enderchest.15 with iron_boots{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-B"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.6b"}']},eval:52,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 6.. if score @s eqaPath matches 2 run item replace entity @s enderchest.15 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VI-B"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["80"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.6b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches ..79 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches 80.. run scoreboard players set @s eqaLevel 6
execute as @s[scores={tsEGUI_guiVal=52}] if score @s gold matches 80.. run scoreboard players remove @s gold 80

# End
execute if score @s eqaLevel matches ..3 run item replace entity @s enderchest.16 with diamond_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VII"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.7"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4..5 if score @s eqaPath matches 1 run item replace entity @s enderchest.16 with diamond_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VII"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.7a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 4..5 if score @s eqaPath matches 2 run item replace entity @s enderchest.16 with diamond_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VII"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"translate":"equipment.upgrade_not_available_yet","color":"red","italic":true}','{"color":"gray","italic":false,"translate":"menu.armor.lvl.7b"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 6 if score @s eqaPath matches 1 run item replace entity @s enderchest.16 with diamond_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VII"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.7a"}']},eval:7,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 6 if score @s eqaPath matches 2 run item replace entity @s enderchest.16 with diamond_chestplate{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VII"],"color":"gray","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"gold","italic":false}]',Lore:['{"color":"gray","italic":false,"translate":"menu.armor.lvl.7b"}']},eval:7,egui:1,Enchantments:[{id:"protection",level:1}]}
execute if score @s eqaLevel matches 7.. if score @s eqaPath matches 1 run item replace entity @s enderchest.16 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VIII"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.7a"}']},eval:-1,egui:1}
execute if score @s eqaLevel matches 7.. if score @s eqaPath matches 2 run item replace entity @s enderchest.16 with prismarine_crystals{HideFlags:63,display:{Name:'["",{"translate":"menu.armor.lvl","with":["VIII"],"color":"green","italic":false,"bold":true}," ",{"translate":"menu.shop.gold","with":["100"],"color":"dark_green","italic":false}]',Lore:['{"color":"green","italic":false,"translate":"menu.armor.lvl.7b"}']},eval:-1,egui:1}
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches ..99 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches 100.. run scoreboard players set @s eqaLevel 7
execute as @s[scores={tsEGUI_guiVal=7}] if score @s gold matches 100.. run scoreboard players remove @s gold 100



# Reload Page
execute as @s[scores={tsEGUI_guiVal=1..800}] run function main:game/equipment/armor
execute as @s[scores={tsEGUI_guiVal=1..800}] run scoreboard players set @s armorMove -10
execute as @s[scores={tsEGUI_guiVal=1..800}] run tag @s add armorUpdate
execute as @s[scores={tsEGUI_guiVal=1..800}] run scoreboard players set @s tsEGUI_guiSwitch 16


