## empty hearts
# empty hearts
data modify storage custom_ui:main generate.empty_hearts set value [""]
scoreboard players set #rec custom_ui 0
scoreboard players set #rec2 custom_ui 1
function custom_ui:generate/empty_hearts_bottom
data modify storage custom_ui:main generate.empty_hearts append value "<<<<<<<<<<"
function custom_ui:generate/empty_hearts_top
data modify storage custom_ui:main generate.empty_hearts append value "<<<<<<<<<<"

# flash?
execute if score flash custom_ui matches 0 if score health_backcolor custom_ui matches 1 run data modify storage custom_ui:main elements.empty_hearts set value '{"storage":"custom_ui:main","nbt":"generate.empty_hearts","interpret":true,"font":"health:empty/normal"}'
execute if score flash custom_ui matches 0 if score health_backcolor custom_ui matches 2 run data modify storage custom_ui:main elements.empty_hearts set value '{"storage":"custom_ui:main","nbt":"generate.empty_hearts","interpret":true,"font":"health:empty/persistence"}'
execute if score flash custom_ui matches 1 run data modify storage custom_ui:main elements.empty_hearts set value '{"storage":"custom_ui:main","nbt":"generate.empty_hearts","interpret":true,"font":"health:empty/flash"}'

###
## filled hearts
# health
data modify storage custom_ui:main generate.hearts set value [""]
scoreboard players set #rec custom_ui 1
scoreboard players set #rec2 custom_ui 1
function custom_ui:generate/hearts_bottom
data modify storage custom_ui:main generate.hearts append value "<<<<<<<<<<"
function custom_ui:generate/hearts_top

# health color
execute if score health_color custom_ui matches 1 run data modify storage custom_ui:main elements.hearts set value '{"storage":"custom_ui:main","nbt":"generate.hearts","interpret":true,"font":"health:heart/normal"}'
execute if score health_color custom_ui matches 2 run data modify storage custom_ui:main elements.hearts set value '{"storage":"custom_ui:main","nbt":"generate.hearts","interpret":true,"font":"health:heart/poison"}'
execute if score health_color custom_ui matches 3 run data modify storage custom_ui:main elements.hearts set value '{"storage":"custom_ui:main","nbt":"generate.hearts","interpret":true,"font":"health:heart/wither"}'
execute if score health_color custom_ui matches 4 run data modify storage custom_ui:main elements.hearts set value '{"storage":"custom_ui:main","nbt":"generate.hearts","interpret":true,"font":"health:heart/vulnerability"}'


# flash
# old health 
data modify storage custom_ui:main generate.flash_hearts set value [""]
execute if score flash custom_ui matches 1 run function custom_ui:generate/flash
execute if score health_color custom_ui matches 1 run data modify storage custom_ui:main elements.flash_hearts set value '{"storage":"custom_ui:main","nbt":"generate.flash_hearts","interpret":true,"font":"health:heart/normal"}'
execute if score health_color custom_ui matches 2 run data modify storage custom_ui:main elements.flash_hearts set value '{"storage":"custom_ui:main","nbt":"generate.flash_hearts","interpret":true,"font":"health:heart/poison"}'
execute if score health_color custom_ui matches 3 run data modify storage custom_ui:main elements.flash_hearts set value '{"storage":"custom_ui:main","nbt":"generate.flash_hearts","interpret":true,"font":"health:heart/wither"}'
execute if score health_color custom_ui matches 4 run data modify storage custom_ui:main elements.flash_hearts set value '{"storage":"custom_ui:main","nbt":"generate.flash_hearts","interpret":true,"font":"health:heart/vulnerability"}'

# armor
data modify storage custom_ui:main generate.armor set value [""]
scoreboard players set #rec custom_ui 1
execute if score shield custom_ui matches 0 unless score armor_up custom_ui matches 19 run data modify storage custom_ui:main generate.armor prepend value "sb"
execute if score shield custom_ui matches 1 unless score armor_up custom_ui matches 19 run data modify storage custom_ui:main generate.armor prepend value "Sb"
execute if score shield custom_ui matches 0 if score armor_up custom_ui matches 19 run data modify storage custom_ui:main generate.armor prepend value "db"
execute if score shield custom_ui matches 1 if score armor_up custom_ui matches 19 run data modify storage custom_ui:main generate.armor prepend value "Db"
function custom_ui:generate/armor
execute if score armor_color custom_ui matches 1 run data modify storage custom_ui:main elements.armor set value '{"storage":"custom_ui:main","nbt":"generate.armor","interpret":true,"font":"health:armor/normal"}'
execute if score armor_color custom_ui matches 2 run data modify storage custom_ui:main elements.armor set value '{"storage":"custom_ui:main","nbt":"generate.armor","interpret":true,"font":"health:armor/invisibility"}'
execute if score armor_color custom_ui matches 3 run data modify storage custom_ui:main elements.armor set value '{"storage":"custom_ui:main","nbt":"generate.armor","interpret":true,"font":"health:armor/vulnerability"}'

# elytra
execute if score elytra custom_ui matches 0 run data modify storage custom_ui:main elements.elytra set value '""'
execute if score elytra custom_ui matches 1 run data modify storage custom_ui:main elements.elytra set value '{"text":"0b<","font":"health:armor/normal"}'
execute if score elytra custom_ui matches 2 run data modify storage custom_ui:main elements.elytra set value '{"text":"1b<","font":"health:armor/normal"}'
execute if score elytra custom_ui matches 3 run data modify storage custom_ui:main elements.elytra set value '{"text":"2b<","font":"health:armor/normal"}'

# gold
data modify storage custom_ui:main elements.gold set value '{"text":"gb","font":"health:gold"}'

# gold timer
scoreboard players operation #rec custom_ui = gold custom_ui
data modify storage custom_ui:main generate.gold_numbers set value [""]
data modify storage custom_ui:main generate.gold_numbers_space set value [""]
data modify storage custom_ui:main generate.gold_numbers_space2 set value [""]
data modify storage custom_ui:main generate.gold_numbers_space3 set value [""]
execute if score #rec custom_ui matches 0.. run function custom_ui:generate/gold_numbers
data remove storage custom_ui:main generate.gold_numbers_space2[1]
data remove storage custom_ui:main generate.gold_numbers_space3[1]
execute if score gold_color custom_ui matches 1 run data modify storage custom_ui:main elements.gold_numbers set value '[{"translate":"space.-96"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space2","interpret":true,"font":"health:gold_numbers"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers","interpret":true,"font":"health:gold_numbers"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space","interpret":true,"font":"health:gold_numbers"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space3","interpret":true,"font":"health:gold_numbers"},{"translate":"space.96"}]'
execute if score gold_color custom_ui matches 2 run data modify storage custom_ui:main elements.gold_numbers set value '[{"translate":"space.-96"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space2","interpret":true,"font":"health:gold_numbers2"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers","interpret":true,"font":"health:gold_numbers2"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space","interpret":true,"font":"health:gold_numbers2"},{"storage":"custom_ui:main","nbt":"generate.gold_numbers_space3","interpret":true,"font":"health:gold_numbers2"},{"translate":"space.96"}]'

# actionbar 
execute if score msg custom_ui matches 0 run data modify storage custom_ui:main elements.msg set value '""'
execute if score msg custom_ui matches 1 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.red.space","font":"space","bold":true},{"translate":"lobby.team.red","color":"red","bold":"true"}]'
execute if score msg custom_ui matches 2 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.blue.space","font":"space","bold":true},{"translate":"lobby.team.blue","color":"blue","bold":"true"}]'
execute if score msg custom_ui matches 3 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.green.space","font":"space","bold":true},{"translate":"lobby.team.green","color":"green","bold":"true"}]'
execute if score msg custom_ui matches 4 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.yellow.space","font":"space","bold":true},{"translate":"lobby.team.yellow","color":"yellow","bold":"true"}]'
execute if score msg custom_ui matches 5 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.leave.space","font":"space","bold":true},{"translate":"lobby.team.leave","color":"gray","bold":"true"}]'
execute if score msg custom_ui matches 6 run data modify storage custom_ui:main elements.msg set value '["",{"translate":"lobby.team.random2.space","font":"space","bold":true},{"translate":"lobby.team.random2","color":"dark_purple","bold":"true"}]'

# display
title @s actionbar [{"text":"","color":"#4e5c24"},{"storage":"custom_ui:main","nbt":"elements.empty_hearts","interpret":true},{"storage":"custom_ui:main","nbt":"elements.flash_hearts","interpret":true},{"storage":"custom_ui:main","nbt":"elements.hearts","interpret":true},{"translate":"space.-14"},{"storage":"custom_ui:main","nbt":"elements.gold","interpret":true},{"translate":"space.-2"},{"storage":"custom_ui:main","nbt":"elements.armor","interpret":true},{"translate":"space.2"},{"storage":"custom_ui:main","nbt":"elements.elytra","interpret":true},{"storage":"custom_ui:main","nbt":"elements.gold_numbers","interpret":true},{"storage":"custom_ui:main","nbt":"elements.msg","interpret":true}]
