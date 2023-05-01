#execute store result score @s player_model if data storage parse:main out[{Name:["main"]}].Value[{Name:[t,e,x,t,u,r,e,s]}].Value[{Name:[S,K,I,N]}].Value[{Name:[m,e,t,a,d,a,t,a]}].Value[{Name:[m,o,d,e,l]}].Value
gamerule sendCommandFeedback false

#tellraw @a {"nbt":"out.skin","storage":"s_str:io"}

data modify storage s_str:io empty_fix set from storage s_str:io out.skin[-1]
execute if data storage s_str:io {empty_fix:"\""} run data remove storage s_str:io out.skin[-1]

execute store result score length dynamic_skill if data storage s_str:io out.skin[]
execute if score length dynamic_skill matches ..63 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..62 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..61 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..60 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..59 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..58 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..57 run data modify storage s_str:io out.skin prepend value "0"
execute if score length dynamic_skill matches ..56 run data modify storage s_str:io out.skin prepend value "0"

# get binary
# get 32 bits from skin
scoreboard players set chars dynamic_skill 8
execute if score chars dynamic_skill matches 1.. run function application_cape:internal/to_bin
# get 1 bit from model
execute if data storage s_str:io out{model:0b} run data modify storage dynamic_skill:main binary append value 0b
execute if data storage s_str:io out{model:1b} run data modify storage dynamic_skill:main binary append value 1b

gamerule sendCommandFeedback false

#tellraw @a [{"text":"","color":"gold"},"All Bits: ",{"storage":"dynamic_skill:main","nbt":"binary"}]

# increment step counter to determine next action
scoreboard players add sotdStep dynamic_skill 1
execute if score sotdStep dynamic_skill matches 1 run schedule function application_cape:internal/skull2 5t
execute if score sotdStep dynamic_skill matches 2 run schedule function application_cape:internal/skull3 5t
execute if score sotdStep dynamic_skill matches 3 run schedule function application_cape:internal/skull4 5t
execute if score sotdStep dynamic_skill matches 4 run schedule function dynamic_skill:decode 5t