execute if score #rec custom_ui < prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value "Rb"
execute if score #rec custom_ui = prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value "rdd"
execute if score #rec custom_ui > prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value ">"
scoreboard players add #rec custom_ui 2
execute if score #rec custom_ui matches ..39 run function custom_ui:generate/flash_hearts_top