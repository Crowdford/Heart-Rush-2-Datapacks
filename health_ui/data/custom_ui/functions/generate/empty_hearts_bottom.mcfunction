execute if score #rec custom_ui < max_health custom_ui unless score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.empty_hearts append value "eb"
execute if score #rec custom_ui < max_health custom_ui if score up custom_ui = #rec2 custom_ui run data modify storage custom_ui:main generate.empty_hearts append value "ub"
execute if score #rec custom_ui >= max_health custom_ui run data modify storage custom_ui:main generate.empty_hearts append value ">"
scoreboard players add #rec custom_ui 2
scoreboard players add #rec2 custom_ui 1
execute if score #rec custom_ui matches ..19 run function custom_ui:generate/empty_hearts_bottom