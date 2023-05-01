function dynamic_skill:book/binary
data modify storage dynamic_skill:main binary append from storage dynamic_skill:main bits[]
scoreboard players remove chars dynamic_skill 1
execute if data storage universal:strings io[0] run function dynamic_skill:book/to_bin