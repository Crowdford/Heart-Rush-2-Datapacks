# Get Name
# Setup
loot replace block 0 0 0 container.0 loot application_name:get/skull
data modify storage string:io temp set value {string:"",callback:{command:"function main:game/name_parsed",id:0}}
data modify storage string:io temp.string set from block 0 0 0 Items[0].tag.SkullOwner.Name
execute store result storage string:io temp.callback.id int 1 run scoreboard players get @s playerID
data modify storage string:io queue append from storage string:io temp
function string:call
