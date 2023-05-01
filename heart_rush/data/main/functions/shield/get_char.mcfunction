execute if data storage sbc:shield {char:"D"} if score attempt shield matches 2..3 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:0,Pattern:"ld"},{Color:0,Pattern:"rd"}]
execute if data storage sbc:shield {char:"D"} if score attempt shield matches 2..3 run scoreboard players remove over shield 2
execute if data storage sbc:shield {char:"D"} if score attempt shield matches 1 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bo"},{Color:15,Pattern:"cre"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rd"}]
execute if data storage sbc:shield {char:"D"} if score attempt shield matches 1 run scoreboard players remove over shield 1
execute if data storage sbc:shield {char:"D"} if score attempt shield matches 0 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bo"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"cr"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rd"}]

execute if data storage sbc:shield {char:"J"} if score attempt shield matches 1..3 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"lud"},{Color:0,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:0,Pattern:"ld"}]
execute if data storage sbc:shield {char:"J"} if score attempt shield matches 1..3 run scoreboard players remove over shield 2
execute if data storage sbc:shield {char:"J"} if score attempt shield matches 0 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cre"},{Color:0,Pattern:"mc"},{Color:0,Pattern:"cr"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"bo"},{Color:0,Pattern:"ld"}]

execute if data storage sbc:shield {char:"B"} if score attempt shield matches 1..3 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:0,Pattern:"ld"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"B"} if score attempt shield matches 1..3 run scoreboard players remove over shield 1
execute if data storage sbc:shield {char:"B"} if score attempt shield matches 0 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:0,Pattern:"ld"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"bri"}]

execute if data storage sbc:shield {char:"M"} if score attempt shield matches 2 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"ld"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"M"} if score attempt shield matches 2 run scoreboard players remove over shield 3
execute if data storage sbc:shield {char:"M"} if score attempt shield matches 0..1 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"bo"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cr"},{Color:0,Pattern:"cre"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"}]

execute if data storage sbc:shield {char:"N"} if score attempt shield matches 3 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"ld"},{Color:15,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"N"} if score attempt shield matches 3 run scoreboard players remove over shield 3
execute if data storage sbc:shield {char:"N"} if score attempt shield matches 0..2 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"bo"},{Color:15,Pattern:"cr"},{Color:0,Pattern:"mc"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"}]

execute if data storage sbc:shield {char:"Y"} if score attempt shield matches 2..3 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"mc"},{Color:0,Pattern:"ld"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"Y"} if score attempt shield matches 2..3 run scoreboard players remove over shield 1
execute if data storage sbc:shield {char:"Y"} if score attempt shield matches 0..1 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"bo"},{Color:0,Pattern:"bri"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"cbo"}]


execute if data storage sbc:shield {char:"6"} if score attempt shield matches 3 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"lud"},{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"},{Color:0,Pattern:"cr"}]
execute if data storage sbc:shield {char:"6"} if score attempt shield matches 3 run scoreboard players remove over shield 1
execute if data storage sbc:shield {char:"6"} if score attempt shield matches 0..2 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"},{Color:0,Pattern:"cr"},{Color:15,Pattern:"cre"},{Color:15,Pattern:"bri"}]

execute if data storage sbc:shield {char:"X"} if score attempt shield matches 2..3 run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"ld"},{Color:0,Pattern:"cbo"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cre"}]
execute if data storage sbc:shield {char:"X"} if score attempt shield matches 2..3 run scoreboard players remove over shield 2
execute if data storage sbc:shield {char:"X"} if score attempt shield matches 0..1 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cr"},{Color:0,Pattern:"cbo"},{Color:15,Pattern:"bo"},{Color:0,Pattern:"bri"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cre"}]

execute if data storage sbc:shield {char:"K"} if score attempt shield matches 3 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"mc"},{Color:15,Pattern:"cr"},{Color:0,Pattern:"ld"},{Color:0,Pattern:"cre"}]
execute if data storage sbc:shield {char:"K"} if score attempt shield matches 3 run scoreboard players remove over shield 1
execute if data storage sbc:shield {char:"K"} if score attempt shield matches 0..2 run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"mc"},{Color:15,Pattern:"cr"},{Color:0,Pattern:"ld"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"cbo"}]


execute if data storage sbc:shield {char:"A"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rud"}]
execute if data storage sbc:shield {char:"C"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:0,Pattern:"cr"},{Color:0,Pattern:"lud"}]
execute if data storage sbc:shield {char:"E"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"cr"},{Color:15,Pattern:"cre"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rud"}]
execute if data storage sbc:shield {char:"F"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"cr"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rud"}]
execute if data storage sbc:shield {char:"G"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cre"},{Color:15,Pattern:"cr"},{Color:0,Pattern:"lud"},{Color:0,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"H"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bri"},{Color:0,Pattern:"rud"}]
execute if data storage sbc:shield {char:"I"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:0,Pattern:"cr"},{Color:0,Pattern:"ld"}]
execute if data storage sbc:shield {char:"L"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"cr"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"mc"},{Color:15,Pattern:"bri"}]
execute if data storage sbc:shield {char:"O"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"lud"},{Color:0,Pattern:"rd"}]
execute if data storage sbc:shield {char:"P"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"bri"},{Color:0,Pattern:"rud"}]
execute if data storage sbc:shield {char:"Q"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cr"},{Color:0,Pattern:"lud"},{Color:0,Pattern:"rd"}]
execute if data storage sbc:shield {char:"R"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"cr"},{Color:0,Pattern:"ld"},{Color:0,Pattern:"bri"}]
execute if data storage sbc:shield {char:"S"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"},{Color:0,Pattern:"cr"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"T"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"ld"},{Color:0,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"U"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"lud"},{Color:0,Pattern:"rd"},{Color:0,Pattern:"mc"}]
execute if data storage sbc:shield {char:"V"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"cbo"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cre"},{Color:15,Pattern:"bri"}]
execute if data storage sbc:shield {char:"W"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:15,Pattern:"cr"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"Z"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"mc"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"cbo"},{Color:0,Pattern:"bri"}]
execute if data storage sbc:shield {char:""} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value []
execute if data storage sbc:shield {char:" "} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bo"},{Color:0,Pattern:"cbo"},{Color:0,Pattern:"mc"}]

execute if data storage sbc:shield {char:"0"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"mc"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"1"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"cbo"},{Color:15,Pattern:"mc"},{Color:0,Pattern:"cre"},{Color:0,Pattern:"bo"}]
execute if data storage sbc:shield {char:"2"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:15,Pattern:"bri"},{Color:0,Pattern:"bo"},{Color:0,Pattern:"rud"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"3"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bo"},{Color:0,Pattern:"rud"},{Color:15,Pattern:"cre"},{Color:15,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"4"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"mc"},{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"}]
execute if data storage sbc:shield {char:"5"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"},{Color:0,Pattern:"cr"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"7"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bri"},{Color:0,Pattern:"cbo"},{Color:15,Pattern:"mc"}]
execute if data storage sbc:shield {char:"8"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"bri"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"cre"}]
execute if data storage sbc:shield {char:"9"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"rud"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"cre"}]

execute if data storage sbc:shield {char:"_"} if score attempt shield matches 0.. run data modify storage sbc:shield pattern set value [{Color:0,Pattern:"bo"},{Color:15,Pattern:"cre"},{Color:0,Pattern:"mc"},{Color:0,Pattern:"cbo"}]