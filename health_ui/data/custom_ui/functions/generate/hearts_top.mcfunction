execute if score #rec custom_ui < health custom_ui unless score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "Yb"
execute if score #rec custom_ui = health custom_ui unless score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "ydd"
execute if score #rec custom_ui < health custom_ui if score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "Ob"
execute if score #rec custom_ui = health custom_ui if score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "odd"
execute if score #rec custom_ui > health custom_ui run data modify storage custom_ui:main generate.hearts append value ">"
scoreboard players add #rec custom_ui 2
scoreboard players add #rec2 custom_ui 1
execute if score #rec custom_ui matches ..39 run function custom_ui:generate/hearts_top