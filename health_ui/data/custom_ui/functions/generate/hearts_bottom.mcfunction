execute if score #rec custom_ui < health custom_ui unless score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "Hb"
execute if score #rec custom_ui = health custom_ui unless score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "hdd"
execute if score #rec custom_ui < health custom_ui if score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "Ub"
execute if score #rec custom_ui = health custom_ui if score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.hearts append value "udd"
execute if score #rec custom_ui > health custom_ui run data modify storage custom_ui:main generate.hearts append value ">"
scoreboard players add #rec custom_ui 2
scoreboard players add #rec2 custom_ui 1
execute if score #rec custom_ui matches ..19 run function custom_ui:generate/hearts_bottom