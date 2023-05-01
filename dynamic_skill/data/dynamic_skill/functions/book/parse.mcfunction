tag @a remove skillSubmitter
tag @s add skillSubmitter

#execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. run data modify storage universal:strings io set value {string:"",callback:{command:"function dynamic_skill:book/callback",error:"function dynamic_skill:book/error",id:1}}
execute unless score $callback string matches 0.. if data entity @s Inventory[{id:"minecraft:written_book"}].tag.pages run data modify storage universal:strings io.string set from entity @s Inventory[{id:"minecraft:written_book"}].tag.pages[0]
execute unless score $callback string matches 0.. if data entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages run data modify storage universal:strings io.string set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
#execute unless score $callback string matches 0.. run tellraw @a ["Input: ",{"storage":"universal:strings","nbt":"io.string","interpret":false}]
function string:callio

