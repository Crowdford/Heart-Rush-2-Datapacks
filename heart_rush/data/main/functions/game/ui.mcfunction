# Set Values
scoreboard players operation health custom_ui = @s actualHealth
scoreboard players operation max_health custom_ui = @s maxHealth
scoreboard players operation armor custom_ui = @s armor

scoreboard players operation health custom_ui < max_health custom_ui

scoreboard players set shield custom_ui 0
execute if entity @s[scores={eqaLevel=5..}] unless score @s eqs matches 0 run scoreboard players set shield custom_ui 1

# colors
scoreboard players set armor_color custom_ui 1
scoreboard players set health_color custom_ui 1
scoreboard players set health_backcolor custom_ui 1
execute if data entity @s ActiveEffects[{Id:14}] run scoreboard players set armor_color custom_ui 2
execute if data entity @s ActiveEffects[{Id:27}] run scoreboard players set armor_color custom_ui 3
execute if data entity @s ActiveEffects[{Id:19}] run scoreboard players set health_color custom_ui 2
execute if data entity @s ActiveEffects[{Id:20}] run scoreboard players set health_color custom_ui 3
execute if data entity @s ActiveEffects[{Id:27}] run scoreboard players set health_color custom_ui 4
execute if data entity @s ActiveEffects[{Id:26}] run scoreboard players set health_backcolor custom_ui 2

scoreboard players set gold_color custom_ui 1
execute if score @s goldtimer matches -1 run scoreboard players set gold_color custom_ui 2

# Flash
execute unless score @s actualPrevHealth = @s actualHealth run scoreboard players set @s healthFlash 16
scoreboard players set flash custom_ui 0
scoreboard players operation prev_health custom_ui = @s prevHealth
scoreboard players operation prev_health custom_ui < max_health custom_ui
execute if score @s healthFlash matches 02..04 run scoreboard players set flash custom_ui 1
execute if score @s healthFlash matches 08..10 run scoreboard players set flash custom_ui 1
execute if score @s healthFlash matches 14..16 run scoreboard players set flash custom_ui 1
execute if score @s healthFlash matches 1.. run scoreboard players remove @s healthFlash 1
execute unless score @s healthFlash matches 1.. run scoreboard players operation @s prevHealth = @s actualHealth

# heart up
execute if score @s actualHealth >= @s maxHealth run scoreboard players set @s heartUp 0
execute if entity @s[tag=noNatRegen] run scoreboard players set @s heartUp 0
scoreboard players set up custom_ui 0
scoreboard players operation up custom_ui = @s heartUp
execute if score @s healthFlash matches 1.. run scoreboard players set up custom_ui 0

# shake
scoreboard players set armor_up custom_ui 0
execute if data entity @s ActiveEffects[{Id:27}] run scoreboard players operation armor custom_ui = @s armorSaved
execute if data entity @s ActiveEffects[{Id:27}] run function main:game/ui_shake

# Gold
scoreboard players add @s gold 0
scoreboard players operation gold custom_ui = @s gold

# Elytra
scoreboard players set elytra custom_ui 0
execute if score @s elytra matches 40.. run scoreboard players set elytra custom_ui 1
execute if score @s elytra matches 1..39 run function main:game/ui_elytra

# Display Bar
scoreboard players set msg custom_ui 0
execute if entity @s[gamemode=adventure] run function custom_ui:display

# track old health 
scoreboard players operation @s actualPrevHealth = @s actualHealth