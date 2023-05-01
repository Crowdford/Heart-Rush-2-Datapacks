function skills:store/load
scoreboard players operation $1 Temp = $1 SkillParams
execute if score $1 SkillParams matches 2.. run function skills:effects/_tp_back
scoreboard players operation $1 SkillParams = $1 Temp
execute if data storage skills:main player[0] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["skillsTempLoc"]}
data modify entity @e[type=area_effect_cloud,tag=skillsTempLoc,limit=1,sort=nearest,distance=..0.1] Rotation set from storage skills:main player[0].Rotation
data modify entity @e[type=area_effect_cloud,tag=skillsTempLoc,limit=1,sort=nearest,distance=..0.1] Pos set from storage skills:main player[0].Pos
tp @s @e[type=area_effect_cloud,tag=skillsTempLoc,limit=1,sort=nearest]
kill @e[type=area_effect_cloud,tag=skillsTempLoc,limit=1,sort=nearest]
data remove storage skills:main player[0] 
function skills:store/store
