scoreboard players remove @s[scores={uiActionbarTime=1..}] uiActionbarTime 1
execute unless score @s uiActionbarTime matches 1.. run scoreboard players set @s uiActionbarID 0
scoreboard players operation msg custom_ui = @s uiActionbarID
function custom_ui:display
