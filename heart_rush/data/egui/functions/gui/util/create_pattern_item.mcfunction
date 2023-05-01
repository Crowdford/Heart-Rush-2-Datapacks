data modify block 0 0 0 Items set value [{id:"minecraft:leather_horse_armor",Count:1,Slot:0b,tag:{HideFlags:127,eval:0,egui:1,display:{color:0,Name:'"pattern"',Lore:['{"translate":"menu.shield.remove.item","color":"red","italic":false}']}}}]

scoreboard players operation patternType Temp = pattern Temp
scoreboard players operation patternType Temp %= 100 Const
scoreboard players operation patternColor Temp = pattern Temp
scoreboard players operation patternColor Temp /= 100 Const

execute if score patternType Temp matches 1 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.1"}'
execute if score patternType Temp matches 2 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.2"}'
execute if score patternType Temp matches 3 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.3"}'
execute if score patternType Temp matches 4 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.4"}'
execute if score patternType Temp matches 5 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.5"}'
execute if score patternType Temp matches 10 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.10"}'
execute if score patternType Temp matches 11 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.11"}'
execute if score patternType Temp matches 12 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.12"}'
execute if score patternType Temp matches 13 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.13"}'
execute if score patternType Temp matches 14 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.14"}'
execute if score patternType Temp matches 19 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.19"}'
execute if score patternType Temp matches 20 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.20"}'
execute if score patternType Temp matches 21 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.21"}'
execute if score patternType Temp matches 22 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.22"}'
execute if score patternType Temp matches 23 run data modify storage sbc:shield temp set value '{"translate":"menu.shield.pattern.23"}'


execute if score patternColor Temp matches 1 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.1","color":"white"}'
execute if score patternColor Temp matches 2 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.2","color":"#cfcfcf"}'
execute if score patternColor Temp matches 3 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.3","color":"#949494"}'
execute if score patternColor Temp matches 4 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.4","color":"#5c5c5c"}'
execute if score patternColor Temp matches 10 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.10","color":"#a35fd4"}'
execute if score patternColor Temp matches 11 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.11","color":"light_purple"}'
execute if score patternColor Temp matches 12 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.12","color":"#f3bdff"}'
execute if score patternColor Temp matches 13 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.13","color":"gold"}'
execute if score patternColor Temp matches 19 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.19","color":"#3290b3"}'
execute if score patternColor Temp matches 20 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.20","color":"#87bfed"}'
execute if score patternColor Temp matches 21 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.21","color":"#755601"}'
execute if score patternColor Temp matches 22 run data modify storage sbc:shield temp2 set value '{"translate":"menu.shield.color.22","color":"dark_green"}'


execute if score patternColor Temp matches 1 run data modify block 0 0 0 Items[0].tag.display.color set value 16777215
execute if score patternColor Temp matches 2 run data modify block 0 0 0 Items[0].tag.display.color set value 13619151
execute if score patternColor Temp matches 3 run data modify block 0 0 0 Items[0].tag.display.color set value 9737364
execute if score patternColor Temp matches 4 run data modify block 0 0 0 Items[0].tag.display.color set value 6052956
execute if score patternColor Temp matches 10 run data modify block 0 0 0 Items[0].tag.display.color set value 10706900
execute if score patternColor Temp matches 11 run data modify block 0 0 0 Items[0].tag.display.color set value 16733695
execute if score patternColor Temp matches 12 run data modify block 0 0 0 Items[0].tag.display.color set value 15973887
execute if score patternColor Temp matches 13 run data modify block 0 0 0 Items[0].tag.display.color set value 16755200
execute if score patternColor Temp matches 19 run data modify block 0 0 0 Items[0].tag.display.color set value 3313843
execute if score patternColor Temp matches 20 run data modify block 0 0 0 Items[0].tag.display.color set value 8896493
execute if score patternColor Temp matches 21 run data modify block 0 0 0 Items[0].tag.display.color set value 7689729
execute if score patternColor Temp matches 22 run data modify block 0 0 0 Items[0].tag.display.color set value 43520

data modify block 0 1 0 Text1 set value '[{"storage":"sbc:shield","nbt":"temp2","interpret":true,"italic":false},{"translate":"menu.shield.pattern_item"},{"storage":"sbc:shield","nbt":"temp","interpret":true}]'
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 1 0 Text1