# get book skill id
scoreboard players add book_skill dynamic_skill 1
execute if score book_skill dynamic_skill matches 16.. run scoreboard players set book_skill dynamic_skill 0

# determine players needed
execute store result score players dynamic_skill if entity @a
scoreboard players operation players dynamic_skill /= #2 dynamic_skill
scoreboard players operation players dynamic_skill < #4 dynamic_skill
scoreboard players operation players dynamic_skill > #1 dynamic_skill
scoreboard players add players dynamic_skill 1

# preview msg
execute if score book_skill dynamic_skill matches 00 run scoreboard players enable @a book_skill00
execute if score book_skill dynamic_skill matches 01 run scoreboard players enable @a book_skill01
execute if score book_skill dynamic_skill matches 02 run scoreboard players enable @a book_skill02
execute if score book_skill dynamic_skill matches 03 run scoreboard players enable @a book_skill03
execute if score book_skill dynamic_skill matches 04 run scoreboard players enable @a book_skill04
execute if score book_skill dynamic_skill matches 05 run scoreboard players enable @a book_skill05
execute if score book_skill dynamic_skill matches 06 run scoreboard players enable @a book_skill06
execute if score book_skill dynamic_skill matches 07 run scoreboard players enable @a book_skill07
execute if score book_skill dynamic_skill matches 08 run scoreboard players enable @a book_skill08
execute if score book_skill dynamic_skill matches 09 run scoreboard players enable @a book_skill09
execute if score book_skill dynamic_skill matches 10 run scoreboard players enable @a book_skill10
execute if score book_skill dynamic_skill matches 11 run scoreboard players enable @a book_skill11
execute if score book_skill dynamic_skill matches 12 run scoreboard players enable @a book_skill12
execute if score book_skill dynamic_skill matches 13 run scoreboard players enable @a book_skill13
execute if score book_skill dynamic_skill matches 14 run scoreboard players enable @a book_skill14
execute if score book_skill dynamic_skill matches 15 run scoreboard players enable @a book_skill15
execute if score book_skill dynamic_skill matches 00 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill00"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill00 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 01 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill01"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill01 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 02 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill02"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill02 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 03 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill03"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill03 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 04 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill04"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill04 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 05 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill05"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill05 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 06 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill06"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill06 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 07 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill07"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill07 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 08 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill08"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill08 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 09 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill09"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill09 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 10 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill10"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill10 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 11 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill11"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill11 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 12 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill12"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill12 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 13 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill13"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill13 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 14 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill14"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill14 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]
execute if score book_skill dynamic_skill matches 15 run tellraw @a [{"translate":"dynskill.add_skill","with":[{"selector":"@p[tag=skillSubmitter]"},[{"text":"[","color":"green"},{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"bold":true,"hoverEvent":{"action":"show_text","contents":["",{"storage":"dynamic_skill:main","nbt":"skill.name","interpret":true,"color":"gray","bold":true},"\n",{"storage":"dynamic_skill:main","nbt":"combined_description","interpret":true},[{"text":"minecraft:","color":"dark_gray"},{"storage":"dynamic_skill:main","nbt":"skill.item"}]]}},"]"]]}," ",[{"text":"\n[","color":"dark_green"},{"translate":"dynskill.add_skill.add","clickEvent":{"action":"run_command","value":"/trigger book_skill15"}},"]"," ",[{"text":"[","color":"dark_red"},{"translate":"dynskill.add_skill.dont_add","clickEvent":{"action":"run_command","value":"/trigger book_skill15 set -1"}},"]\n",{"translate":"dynskill.add_skill.votes","color":"gray","italic":true,"with":[{"score":{"name":"players","objective":"dynamic_skill"}}]}]]]

# store skill 
execute if score book_skill dynamic_skill matches 00 store result storage dynamic_skill:main book_skills[0][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 01 store result storage dynamic_skill:main book_skills[1][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 02 store result storage dynamic_skill:main book_skills[2][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 03 store result storage dynamic_skill:main book_skills[3][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 04 store result storage dynamic_skill:main book_skills[4][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 05 store result storage dynamic_skill:main book_skills[5][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 06 store result storage dynamic_skill:main book_skills[6][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 07 store result storage dynamic_skill:main book_skills[7][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 08 store result storage dynamic_skill:main book_skills[8][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 09 store result storage dynamic_skill:main book_skills[9][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 10 store result storage dynamic_skill:main book_skills[10][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 11 store result storage dynamic_skill:main book_skills[11][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 12 store result storage dynamic_skill:main book_skills[12][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 13 store result storage dynamic_skill:main book_skills[13][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 14 store result storage dynamic_skill:main book_skills[14][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 15 store result storage dynamic_skill:main book_skills[15][0].value int 1 run scoreboard players get players dynamic_skill
execute if score book_skill dynamic_skill matches 00 run data modify storage dynamic_skill:main book_skills[0][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 01 run data modify storage dynamic_skill:main book_skills[1][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 02 run data modify storage dynamic_skill:main book_skills[2][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 03 run data modify storage dynamic_skill:main book_skills[3][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 04 run data modify storage dynamic_skill:main book_skills[4][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 05 run data modify storage dynamic_skill:main book_skills[5][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 06 run data modify storage dynamic_skill:main book_skills[6][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 07 run data modify storage dynamic_skill:main book_skills[7][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 08 run data modify storage dynamic_skill:main book_skills[8][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 09 run data modify storage dynamic_skill:main book_skills[9][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 10 run data modify storage dynamic_skill:main book_skills[10][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 11 run data modify storage dynamic_skill:main book_skills[11][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 12 run data modify storage dynamic_skill:main book_skills[12][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 13 run data modify storage dynamic_skill:main book_skills[13][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 14 run data modify storage dynamic_skill:main book_skills[14][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 15 run data modify storage dynamic_skill:main book_skills[15][1] set from storage skills:main skills[-1]
execute if score book_skill dynamic_skill matches 00 run data modify storage dynamic_skill:main book_skills[0][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 01 run data modify storage dynamic_skill:main book_skills[1][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 02 run data modify storage dynamic_skill:main book_skills[2][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 03 run data modify storage dynamic_skill:main book_skills[3][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 04 run data modify storage dynamic_skill:main book_skills[4][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 05 run data modify storage dynamic_skill:main book_skills[5][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 06 run data modify storage dynamic_skill:main book_skills[6][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 07 run data modify storage dynamic_skill:main book_skills[7][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 08 run data modify storage dynamic_skill:main book_skills[8][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 09 run data modify storage dynamic_skill:main book_skills[9][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 10 run data modify storage dynamic_skill:main book_skills[10][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 11 run data modify storage dynamic_skill:main book_skills[11][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 12 run data modify storage dynamic_skill:main book_skills[12][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 13 run data modify storage dynamic_skill:main book_skills[13][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 14 run data modify storage dynamic_skill:main book_skills[14][2] set from storage dynamic_skill:main skill
execute if score book_skill dynamic_skill matches 15 run data modify storage dynamic_skill:main book_skills[15][2] set from storage dynamic_skill:main skill

execute if score book_skill dynamic_skill matches 00 run scoreboard players reset * book_skill00o
execute if score book_skill dynamic_skill matches 00 run scoreboard players set @s book_skill00o 1
execute if score book_skill dynamic_skill matches 01 run scoreboard players reset * book_skill01o
execute if score book_skill dynamic_skill matches 01 run scoreboard players set @s book_skill01o 1
execute if score book_skill dynamic_skill matches 02 run scoreboard players reset * book_skill02o
execute if score book_skill dynamic_skill matches 02 run scoreboard players set @s book_skill02o 1
execute if score book_skill dynamic_skill matches 03 run scoreboard players reset * book_skill03o
execute if score book_skill dynamic_skill matches 03 run scoreboard players set @s book_skill03o 1
execute if score book_skill dynamic_skill matches 04 run scoreboard players reset * book_skill04o
execute if score book_skill dynamic_skill matches 04 run scoreboard players set @s book_skill04o 1
execute if score book_skill dynamic_skill matches 05 run scoreboard players reset * book_skill05o
execute if score book_skill dynamic_skill matches 05 run scoreboard players set @s book_skill05o 1
execute if score book_skill dynamic_skill matches 06 run scoreboard players reset * book_skill06o
execute if score book_skill dynamic_skill matches 06 run scoreboard players set @s book_skill06o 1
execute if score book_skill dynamic_skill matches 07 run scoreboard players reset * book_skill07o
execute if score book_skill dynamic_skill matches 07 run scoreboard players set @s book_skill07o 1
execute if score book_skill dynamic_skill matches 08 run scoreboard players reset * book_skill08o
execute if score book_skill dynamic_skill matches 08 run scoreboard players set @s book_skill08o 1
execute if score book_skill dynamic_skill matches 09 run scoreboard players reset * book_skill09o
execute if score book_skill dynamic_skill matches 09 run scoreboard players set @s book_skill09o 1
execute if score book_skill dynamic_skill matches 10 run scoreboard players reset * book_skill10o
execute if score book_skill dynamic_skill matches 10 run scoreboard players set @s book_skill10o 1
execute if score book_skill dynamic_skill matches 11 run scoreboard players reset * book_skill11o
execute if score book_skill dynamic_skill matches 11 run scoreboard players set @s book_skill11o 1
execute if score book_skill dynamic_skill matches 12 run scoreboard players reset * book_skill12o
execute if score book_skill dynamic_skill matches 12 run scoreboard players set @s book_skill12o 1
execute if score book_skill dynamic_skill matches 13 run scoreboard players reset * book_skill13o
execute if score book_skill dynamic_skill matches 13 run scoreboard players set @s book_skill13o 1
execute if score book_skill dynamic_skill matches 14 run scoreboard players reset * book_skill14o
execute if score book_skill dynamic_skill matches 14 run scoreboard players set @s book_skill14o 1
execute if score book_skill dynamic_skill matches 15 run scoreboard players reset * book_skill15o
execute if score book_skill dynamic_skill matches 15 run scoreboard players set @s book_skill15o 1

# delete from skills
data remove storage skills:main skills[-1]
scoreboard players remove id skills 1

# command feedback 
gamerule sendCommandFeedback false