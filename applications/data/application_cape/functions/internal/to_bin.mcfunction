function application_cape:internal/binary
data modify storage dynamic_skill:main binary append from storage dynamic_skill:main bits[]
scoreboard players remove chars dynamic_skill 1
execute if score chars dynamic_skill matches 1.. run function application_cape:internal/to_bin