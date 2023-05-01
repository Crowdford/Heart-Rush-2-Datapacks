scoreboard players operation patternType Temp = pattern Temp
scoreboard players operation patternType Temp %= 100 Const
scoreboard players operation patternColor Temp = pattern Temp
scoreboard players operation patternColor Temp /= 100 Const

execute if score patternType Temp matches 1 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"pig"}]
execute if score patternType Temp matches 2 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"glb"}]
execute if score patternType Temp matches 3 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"flo"}]
execute if score patternType Temp matches 4 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"sku"}]
execute if score patternType Temp matches 5 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"cre"}]
execute if score patternType Temp matches 10 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"bri"}]
execute if score patternType Temp matches 11 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"mc"}]
execute if score patternType Temp matches 12 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"mr"}]
execute if score patternType Temp matches 13 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"moj"}]
execute if score patternType Temp matches 14 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"cbo"}]
execute if score patternType Temp matches 19 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"bo"}]
execute if score patternType Temp matches 20 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"gra"}]
execute if score patternType Temp matches 21 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"bts"},{Color:15,Pattern:"tts"}]
execute if score patternType Temp matches 22 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"bt"},{Color:15,Pattern:"tt"}]
execute if score patternType Temp matches 23 run data modify storage sbc:shield temp set value [{Color:15,Pattern:"ss"}]

execute if score patternColor Temp matches 1 run data modify storage sbc:shield temp[].Color set value 0
execute if score patternColor Temp matches 2 run data modify storage sbc:shield temp[].Color set value 8
execute if score patternColor Temp matches 3 run data modify storage sbc:shield temp[].Color set value 7
execute if score patternColor Temp matches 4 run data modify storage sbc:shield temp[].Color set value 15
execute if score patternColor Temp matches 10 run data modify storage sbc:shield temp[].Color set value 10
execute if score patternColor Temp matches 11 run data modify storage sbc:shield temp[].Color set value 2
execute if score patternColor Temp matches 12 run data modify storage sbc:shield temp[].Color set value 6
execute if score patternColor Temp matches 13 run data modify storage sbc:shield temp[].Color set value 1
execute if score patternColor Temp matches 19 run data modify storage sbc:shield temp[].Color set value 9
execute if score patternColor Temp matches 20 run data modify storage sbc:shield temp[].Color set value 3
execute if score patternColor Temp matches 21 run data modify storage sbc:shield temp[].Color set value 12
execute if score patternColor Temp matches 22 run data modify storage sbc:shield temp[].Color set value 13