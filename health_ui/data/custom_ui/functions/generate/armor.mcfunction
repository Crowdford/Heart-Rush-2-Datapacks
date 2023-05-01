execute if score #rec custom_ui < armor custom_ui unless score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "fb"
execute if score #rec custom_ui = armor custom_ui unless score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "hb"
execute if score #rec custom_ui > armor custom_ui unless score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "eb"
execute if score #rec custom_ui < armor custom_ui if score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "Fb"
execute if score #rec custom_ui = armor custom_ui if score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "Hb"
execute if score #rec custom_ui > armor custom_ui if score #rec custom_ui = armor_up custom_ui run data modify storage custom_ui:main generate.armor prepend value "Eb"
scoreboard players add #rec custom_ui 2
execute if score #rec custom_ui matches ..17 run function custom_ui:generate/armor