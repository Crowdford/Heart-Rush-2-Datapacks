execute if score #rec custom_ui < prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value "Fb"
execute if score #rec custom_ui = prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value "fdd"
execute if score #rec custom_ui > prev_health custom_ui run data modify storage custom_ui:main generate.flash_hearts append value ">"
scoreboard players add #rec custom_ui 2
execute if score #rec custom_ui matches ..19 run function custom_ui:generate/flash_hearts_bottom