# Default
tag @s add tempItem

# Get Owner
execute store result score @s uuid1 run data get entity @s Thrower[0]
execute store result score @s uuid2 run data get entity @s Thrower[1]
execute store result score @s uuid3 run data get entity @s Thrower[2]
execute store result score @s uuid4 run data get entity @s Thrower[3]
execute as @a if score @s uuid1 = @e[type=item,tag=tempItem,limit=1] uuid1 if score @s uuid2 = @e[type=item,tag=tempItem,limit=1] uuid2 if score @s uuid3 = @e[type=item,tag=tempItem,limit=1] uuid3 if score @s uuid4 = @e[type=item,tag=tempItem,limit=1] uuid4 run tag @s add tempOwner

# Name
execute if data entity @s Item.tag{no_pickup:1b} run data modify entity @s Owner set from entity @s Thrower
execute if data entity @s Item.tag.display.Name run data modify block 0 1 0 Text1 set value '[{"translate":"equipment.item_name","with":[{"selector":"@p[tag=tempOwner]"},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,tag=tempItem]","interpret":true}]}]'
execute unless data entity @s Item.tag.display.Name run data modify block 0 1 0 Text1 set value '[{"translate":"equipment.item_name","with":[{"selector":"@p[tag=tempOwner]"},{"selector":"@e[type=item,tag=tempItem]","color":"gray"}]}]'
data modify entity @s CustomName set from block 0 1 0 Text1
data merge entity @s {CustomNameVisible:1}

# Reset Tags
tag @s remove tempItem
tag @a remove tempOwner
