execute if data entity @s Inventory[{id:"minecraft:written_book"}] unless data entity @s Inventory[{id:"minecraft:written_book"}].tag.pages run tellraw @s {"translate":"dynskill.empty","color":"red"}
execute if data entity @s Inventory[{id:"minecraft:written_book"}] unless data entity @s Inventory[{id:"minecraft:written_book"}].tag.pages run clear @s written_book
execute if data entity @s Inventory[{id:"minecraft:writable_book"}] unless data entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages run tellraw @s {"translate":"dynskill.empty","color":"red"}
execute unless data entity @s Inventory[{id:"minecraft:written_book"}] unless data entity @s Inventory[{id:"minecraft:writable_book"}] run tellraw @s [{"text":"","color":"gold"},{"translate":"dynskill.sign.1","bold":true},"\n",{"translate":"dynskill.sign.2","with":[{"translate":"[%s]","with":[{"translate":"dynskill.sign.here"}],"bold":true,"clickEvent":{"action":"open_url","value":"https://www.crowdford.com/skills/generate?mode=hr2_dyn&view=simplified"},"color":"#f7c154"}]},"\n",{"translate":"dynskill.sign.3","with":["Generate Code"]},"\n",{"translate":"dynskill.sign.4"}]
execute unless data entity @s Inventory[{id:"minecraft:written_book"}] unless data entity @s Inventory[{id:"minecraft:writable_book"}] run clear @s written_book
execute unless data entity @s Inventory[{id:"minecraft:written_book"}] unless data entity @s Inventory[{id:"minecraft:writable_book"}] run give @s minecraft:writable_book{display:{Name:'{"translate":"dynskill.book","italic":false}'}}
execute if data entity @s Inventory[].tag.pages run function dynamic_skill:book/parse
execute if data entity @s Inventory[].tag.pages run clear @s written_book
execute if data entity @s Inventory[].tag.pages run clear @s writable_book