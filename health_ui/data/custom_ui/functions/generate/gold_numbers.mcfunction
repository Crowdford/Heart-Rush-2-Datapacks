scoreboard players operation #gold custom_ui = #rec custom_ui
scoreboard players operation #gold custom_ui %= #10 custom_ui
scoreboard players operation #rec custom_ui /= #10 custom_ui
execute if score #gold custom_ui matches 0 run data modify storage custom_ui:main generate.gold_numbers prepend value "0<"
execute if score #gold custom_ui matches 1 run data modify storage custom_ui:main generate.gold_numbers prepend value "1<"
execute if score #gold custom_ui matches 2 run data modify storage custom_ui:main generate.gold_numbers prepend value "2<"
execute if score #gold custom_ui matches 3 run data modify storage custom_ui:main generate.gold_numbers prepend value "3<"
execute if score #gold custom_ui matches 4 run data modify storage custom_ui:main generate.gold_numbers prepend value "4<"
execute if score #gold custom_ui matches 5 run data modify storage custom_ui:main generate.gold_numbers prepend value "5<"
execute if score #gold custom_ui matches 6 run data modify storage custom_ui:main generate.gold_numbers prepend value "6<"
execute if score #gold custom_ui matches 7 run data modify storage custom_ui:main generate.gold_numbers prepend value "7<"
execute if score #gold custom_ui matches 8 run data modify storage custom_ui:main generate.gold_numbers prepend value "8<"
execute if score #gold custom_ui matches 9 run data modify storage custom_ui:main generate.gold_numbers prepend value "9<"
data modify storage custom_ui:main generate.gold_numbers_space append value "b"
data modify storage custom_ui:main generate.gold_numbers_space2 append value "f"
data modify storage custom_ui:main generate.gold_numbers_space3 append value "s"
execute if score #rec custom_ui matches 1.. run function custom_ui:generate/gold_numbers