tag @a remove skillSubmitter
tag @s add skillSubmitter


execute if data entity @s Inventory[{id:"minecraft:written_book"}].tag.pages run data modify storage string:new in set from entity @s Inventory[{id:"minecraft:written_book"}].tag.pages[0]
execute if data entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages run data modify storage string:new in set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function string:parse

function dynamic_skill:book/callback