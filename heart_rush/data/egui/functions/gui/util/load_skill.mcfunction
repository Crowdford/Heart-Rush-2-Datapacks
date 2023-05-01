# get skill from storage
data modify block 0 0 0 Items set value []
scoreboard players operation get skills = skill Temp
function skills:get_skill_by_id
function skills:load/load_skill

# put skill to selected
execute store result score eval Temp run data get block 0 0 0 Items[0].tag.eval 
execute store result block 0 0 0 Items[0].tag.eval int 1 run scoreboard players operation eval Temp *= -1 Const
data modify block 0 0 0 Items[0].Slot set value 0
execute if score slot Temp matches 1 run loot replace entity @s enderchest.8 1 mine 0 0 0
execute if score slot Temp matches 2 run loot replace entity @s enderchest.17 1 mine 0 0 0
execute if score slot Temp matches 3 run loot replace entity @s enderchest.26 1 mine 0 0 0


# cover slot
data modify block 0 0 0 Items set value [{id:"minecraft:orange_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=red] run data modify block 0 0 0 Items set value [{id:"minecraft:red_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=blue] run data modify block 0 0 0 Items set value [{id:"minecraft:blue_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=green] run data modify block 0 0 0 Items set value [{id:"minecraft:lime_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=yellow] run data modify block 0 0 0 Items set value [{id:"minecraft:yellow_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if score skill Temp matches 01 unless score @s skill_page matches 1 run loot replace entity @s enderchest.0 1 mine 0 0 0
execute if score skill Temp matches 02 unless score @s skill_page matches 1 run loot replace entity @s enderchest.1 1 mine 0 0 0
execute if score skill Temp matches 03 unless score @s skill_page matches 1 run loot replace entity @s enderchest.2 1 mine 0 0 0
execute if score skill Temp matches 04 unless score @s skill_page matches 1 run loot replace entity @s enderchest.3 1 mine 0 0 0
execute if score skill Temp matches 05 unless score @s skill_page matches 1 run loot replace entity @s enderchest.4 1 mine 0 0 0
execute if score skill Temp matches 06 unless score @s skill_page matches 1 run loot replace entity @s enderchest.5 1 mine 0 0 0
execute if score skill Temp matches 07 unless score @s skill_page matches 1 run loot replace entity @s enderchest.6 1 mine 0 0 0
execute if score skill Temp matches 08 unless score @s skill_page matches 1 run loot replace entity @s enderchest.9 1 mine 0 0 0
execute if score skill Temp matches 09 unless score @s skill_page matches 1 run loot replace entity @s enderchest.10 1 mine 0 0 0
execute if score skill Temp matches 10 unless score @s skill_page matches 1 run loot replace entity @s enderchest.11 1 mine 0 0 0
execute if score skill Temp matches 11 unless score @s skill_page matches 1 run loot replace entity @s enderchest.12 1 mine 0 0 0
execute if score skill Temp matches 12 unless score @s skill_page matches 1 run loot replace entity @s enderchest.13 1 mine 0 0 0
execute if score skill Temp matches 13 unless score @s skill_page matches 1 run loot replace entity @s enderchest.14 1 mine 0 0 0
execute if score skill Temp matches 14 unless score @s skill_page matches 1 run loot replace entity @s enderchest.15 1 mine 0 0 0
execute if score skill Temp matches 15 unless score @s skill_page matches 1 run loot replace entity @s enderchest.18 1 mine 0 0 0
execute if score skill Temp matches 16 unless score @s skill_page matches 1 run loot replace entity @s enderchest.19 1 mine 0 0 0
execute if score skill Temp matches 17 unless score @s skill_page matches 1 run loot replace entity @s enderchest.20 1 mine 0 0 0
execute if score skill Temp matches 18 unless score @s skill_page matches 1 run loot replace entity @s enderchest.21 1 mine 0 0 0
execute if score skill Temp matches 19 unless score @s skill_page matches 1 run loot replace entity @s enderchest.22 1 mine 0 0 0
execute if score skill Temp matches 20 unless score @s skill_page matches 1 run loot replace entity @s enderchest.23 1 mine 0 0 0
execute if score skill Temp matches 21 unless score @s skill_page matches 1 run loot replace entity @s enderchest.24 1 mine 0 0 0
execute if score skill Temp matches 22 if score @s skill_page matches 1 run loot replace entity @s enderchest.0 1 mine 0 0 0
execute if score skill Temp matches 23 if score @s skill_page matches 1 run loot replace entity @s enderchest.1 1 mine 0 0 0
execute if score skill Temp matches 24 if score @s skill_page matches 1 run loot replace entity @s enderchest.2 1 mine 0 0 0
execute if score skill Temp matches 25 if score @s skill_page matches 1 run loot replace entity @s enderchest.3 1 mine 0 0 0
execute if score skill Temp matches 26 if score @s skill_page matches 1 run loot replace entity @s enderchest.4 1 mine 0 0 0
execute if score skill Temp matches 27 if score @s skill_page matches 1 run loot replace entity @s enderchest.5 1 mine 0 0 0
execute if score skill Temp matches 28 if score @s skill_page matches 1 run loot replace entity @s enderchest.6 1 mine 0 0 0
execute if score skill Temp matches 29 if score @s skill_page matches 1 run loot replace entity @s enderchest.9 1 mine 0 0 0
execute if score skill Temp matches 30 if score @s skill_page matches 1 run loot replace entity @s enderchest.10 1 mine 0 0 0
execute if score skill Temp matches 31 if score @s skill_page matches 1 run loot replace entity @s enderchest.11 1 mine 0 0 0
execute if score skill Temp matches 32 if score @s skill_page matches 1 run loot replace entity @s enderchest.12 1 mine 0 0 0
execute if score skill Temp matches 33 if score @s skill_page matches 1 run loot replace entity @s enderchest.13 1 mine 0 0 0
execute if score skill Temp matches 34 if score @s skill_page matches 1 run loot replace entity @s enderchest.14 1 mine 0 0 0
execute if score skill Temp matches 35 if score @s skill_page matches 1 run loot replace entity @s enderchest.15 1 mine 0 0 0
execute if score skill Temp matches 36 if score @s skill_page matches 1 run loot replace entity @s enderchest.18 1 mine 0 0 0
execute if score skill Temp matches 37 if score @s skill_page matches 1 run loot replace entity @s enderchest.19 1 mine 0 0 0
execute if score skill Temp matches 38 if score @s skill_page matches 1 run loot replace entity @s enderchest.20 1 mine 0 0 0
execute if score skill Temp matches 39 if score @s skill_page matches 1 run loot replace entity @s enderchest.21 1 mine 0 0 0
execute if score skill Temp matches 40 if score @s skill_page matches 1 run loot replace entity @s enderchest.22 1 mine 0 0 0
execute if score skill Temp matches 41 if score @s skill_page matches 1 run loot replace entity @s enderchest.23 1 mine 0 0 0
execute if score skill Temp matches 42 if score @s skill_page matches 1 run loot replace entity @s enderchest.24 1 mine 0 0 0