execute store result storage skills:register id int 1 run scoreboard players add id skills 1
scoreboard players add version skills 1
data modify storage skills:main skills append from storage skills:register {}
scoreboard players set @a[scores={tsEGUI_guiPage=2}] tsEGUI_guiSwitch 2