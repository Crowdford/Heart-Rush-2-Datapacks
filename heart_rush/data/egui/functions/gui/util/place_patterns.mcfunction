scoreboard players operation pattern Temp = @s bp1
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 1
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.3 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp2
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 2
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.4 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp3
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 3
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.5 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp4
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 4
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.12 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp5
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 5
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.13 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp6
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 6
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.14 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp7
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 7
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.21 1 mine 0 0 0

scoreboard players operation pattern Temp = @s bp8
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern_item
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.eval set value 8
execute if score pattern Temp matches 1.. run loot replace entity @s enderchest.22 1 mine 0 0 0