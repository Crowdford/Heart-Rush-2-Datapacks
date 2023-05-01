function skills:store/load
execute store result score count Temp run data get storage skills:main player
execute if score count Temp matches 120.. run data remove storage skills:main player[-1]
data modify storage skills:main player prepend value {Pos:[],Rotation:[]}
data modify storage skills:main player[0].Pos set from entity @s Pos
data modify storage skills:main player[0].Rotation set from entity @s Rotation
function skills:store/store