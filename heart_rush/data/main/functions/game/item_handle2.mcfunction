# Default
tag @s add tempItem

# Get Owner
execute store result score @s uuid1 run data get entity @s Item.tag.DestroyerUUID[0]
execute store result score @s uuid2 run data get entity @s Item.tag.DestroyerUUID[1]
execute store result score @s uuid3 run data get entity @s Item.tag.DestroyerUUID[2]
execute store result score @s uuid4 run data get entity @s Item.tag.DestroyerUUID[3]
execute as @a if score @s uuid1 = @e[type=item,tag=tempItem,limit=1] uuid1 if score @s uuid2 = @e[type=item,tag=tempItem,limit=1] uuid2 if score @s uuid3 = @e[type=item,tag=tempItem,limit=1] uuid3 if score @s uuid4 = @e[type=item,tag=tempItem,limit=1] uuid4 run tag @s add tempOwner

# Name
execute as @p[tag=tempOwner] run function #skills:events/player/block/break

# Reset Tags
tag @s remove tempItem
tag @a remove tempOwner
