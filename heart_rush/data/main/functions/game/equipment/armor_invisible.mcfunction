# Default (leather)
execute if score @s eqaLevel matches 0.. run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-586363299,1985364701,-1325365161,-908417036]}]}
execute if score @s eqaLevel matches 0.. run item replace entity @s armor.legs with minecraft:netherite_leggings{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.leggings","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-586363299,1984364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 0.. run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-586363279,1985364701,-1325375161,-908417036]}]}

# Root (chain)
execute if score @s eqaLevel matches 1.. run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-586363298,1985364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 2.. run item replace entity @s armor.legs with minecraft:netherite_leggings{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.leggings","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-586363299,1985364701,-1325475161,-908417036]}]}
execute if score @s eqaLevel matches 3.. run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+4,Operation:0,UUID:[I;1,61821,0,123265]}],Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor"}

# gold, iron, iron, diamond
# Path A (Speed)
execute if score @s eqaLevel matches 4..5 if score @s eqaPath matches 1 run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;0,63941,0,154632]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-586363299,1985364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 6 if score @s eqaPath matches 1 run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.035,Operation:0,UUID:[I;0,63941,0,154632]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-586363299,1985364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 7.. if score @s eqaPath matches 1 run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.060,Operation:0,UUID:[I;0,63941,0,154632]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-586363299,1985364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 5.. if score @s eqaPath matches 1 run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+6,Operation:0,UUID:[I;-586363299,1985764702,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 6.. if score @s eqaPath matches 1 run item replace entity @s armor.legs with minecraft:netherite_leggings{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.leggings","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+5,Operation:0,UUID:[I;-586363099,1985364702,-1325345161,-908417036]}]}
execute if score @s eqaLevel matches 7.. if score @s eqaPath matches 1 run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+8,Operation:0,UUID:[I;-586363299,1985364702,-1325345161,-908417036]}]}

# Path B (Projectile & Blast Protection)
execute if score @s eqaLevel matches 4.. if score @s eqaPath matches 2 run item replace entity @s armor.legs with minecraft:netherite_leggings{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.leggings","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1},{id:"blast_protection",lvl:1},{id:"projectile_protection",lvl:1}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-586363299,1985364701,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 5.. if score @s eqaPath matches 2 run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1}],custom:"armor"}
execute if score @s eqaLevel matches 6.. if score @s eqaPath matches 2 run item replace entity @s armor.feet with minecraft:netherite_boots{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.boots","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1},{id:"blast_protection",lvl:2},{id:"projectile_protection",lvl:2}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+3,Operation:0,UUID:[I;-586363299,1985363702,-1325375161,-908417036]}]}
execute if score @s eqaLevel matches 7.. if score @s eqaPath matches 2 run item replace entity @s armor.chest with minecraft:netherite_chestplate{CustomModelData:1,Unbreakable:1,HideFlags:127,display:{Name:'{"translate":"equipment.chestplate","color":"gray","italic":false}'},Enchantments:[{id:"binding_curse",lvl:1},{id:"blast_protection",lvl:2},{id:"projectile_protection",lvl:2}],custom:"armor",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:+9,Operation:0,UUID:[I;-546363299,1985364702,-1325375161,-908417036]}]}

# helmet
function main:game/equipment/helmet_invisible