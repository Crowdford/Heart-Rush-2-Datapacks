data modify block 0 0 0 Items set value [{id:"minecraft:stone",Count:1,Slot:0b}]
execute if score slot Temp matches 1 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:1b}]
execute if score slot Temp matches 2 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:2b}]
execute if score slot Temp matches 3 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:3b}]
execute if score slot Temp matches 4 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:4b}]
execute if score slot Temp matches 5 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:5b}]
execute if score slot Temp matches 10 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:10b}]
execute if score slot Temp matches 11 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:11b}]
execute if score slot Temp matches 12 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:12b}]
execute if score slot Temp matches 13 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:13b}]
execute if score slot Temp matches 14 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:14b}]
execute if score slot Temp matches 19 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:19b}]
execute if score slot Temp matches 20 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:20b}]
execute if score slot Temp matches 21 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:21b}]
execute if score slot Temp matches 22 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:22b}]
execute if score slot Temp matches 23 run data modify block 0 0 0 Items[0] set from entity @s EnderItems[{Slot:23b}]


data modify block 0 0 0 Items[0].Slot set value 0
loot replace entity @s enderchest.7 1 mine 0 0 0

data modify block 0 0 0 Items set value [{id:"minecraft:orange_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=red] run data modify block 0 0 0 Items set value [{id:"minecraft:red_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=blue] run data modify block 0 0 0 Items set value [{id:"minecraft:blue_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=green] run data modify block 0 0 0 Items set value [{id:"minecraft:lime_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if entity @s[team=yellow] run data modify block 0 0 0 Items set value [{id:"minecraft:yellow_stained_glass_pane",Count:1,Slot:0b,tag:{eval:0,egui:1,display:{Name:'""'}}}]
execute if score slot Temp matches 1 run loot replace entity @s enderchest.1 1 mine 0 0 0
execute if score slot Temp matches 2 run loot replace entity @s enderchest.2 1 mine 0 0 0
execute if score slot Temp matches 3 run loot replace entity @s enderchest.3 1 mine 0 0 0
execute if score slot Temp matches 4 run loot replace entity @s enderchest.4 1 mine 0 0 0
execute if score slot Temp matches 5 run loot replace entity @s enderchest.5 1 mine 0 0 0
execute if score slot Temp matches 10 run loot replace entity @s enderchest.10 1 mine 0 0 0
execute if score slot Temp matches 11 run loot replace entity @s enderchest.11 1 mine 0 0 0
execute if score slot Temp matches 12 run loot replace entity @s enderchest.12 1 mine 0 0 0
execute if score slot Temp matches 13 run loot replace entity @s enderchest.13 1 mine 0 0 0
execute if score slot Temp matches 14 run loot replace entity @s enderchest.14 1 mine 0 0 0
execute if score slot Temp matches 19 run loot replace entity @s enderchest.19 1 mine 0 0 0
execute if score slot Temp matches 20 run loot replace entity @s enderchest.20 1 mine 0 0 0
execute if score slot Temp matches 21 run loot replace entity @s enderchest.21 1 mine 0 0 0
execute if score slot Temp matches 22 run loot replace entity @s enderchest.22 1 mine 0 0 0
execute if score slot Temp matches 23 run loot replace entity @s enderchest.23 1 mine 0 0 0
