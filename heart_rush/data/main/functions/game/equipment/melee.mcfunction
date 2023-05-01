clear @s #main:all{custom:"melee"}

scoreboard players operation weapon Temp = @s eqmLevel
scoreboard players operation weapon Temp *= 10 Const
scoreboard players operation weapon Temp += @s eqmPath1
scoreboard players operation weapon Temp *= 10 Const
scoreboard players operation weapon Temp += @s eqmPath2

# Root
execute if score weapon Temp matches 000 run give @s minecraft:netherite_sword{CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.000","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 100 run give @s minecraft:netherite_sword{CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.100","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee",Enchantments:[{id:"protection",lvl:1}]}
execute if score weapon Temp matches 200 run give @s minecraft:netherite_sword{CustomModelData:15,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.200","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}

# A - Knockback Path
execute if score weapon Temp matches 310 run give @s minecraft:netherite_sword{CustomModelData:1,Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.310","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.7,Operation:0,UUID:[I;0,42535,0,187133]}],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 410 run give @s minecraft:netherite_sword{CustomModelData:12,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.410","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.6,Operation:0,UUID:[I;0,42535,0,187133]}],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 510 run give @s minecraft:netherite_sword{CustomModelData:8,Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.510","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],Enchantments:[{id:"knockback",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;0,42535,0,187133]}],no_drop:1b,custom:"melee"}

# B- Damage Path
execute if score weapon Temp matches 320 run give @s minecraft:netherite_sword{CustomModelData:13,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.320","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 420 run give @s minecraft:netherite_sword{CustomModelData:13,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"sharpness",lvl:1}],display:{Name:'{"translate":"equipment.melee.420","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 520 run give @s minecraft:netherite_sword{CustomModelData:10,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;0,19429,0,147907]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"sharpness",lvl:1}],display:{Name:'{"translate":"equipment.melee.520","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}

# AA - Pan
execute if score weapon Temp matches 611 run give @s minecraft:netherite_sword{CustomModelData:7,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"knockback",lvl:3}],display:{Name:'{"translate":"equipment.melee.611","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 711 run give @s minecraft:netherite_sword{CustomModelData:4,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"knockback",lvl:3}],display:{Name:'{"translate":"equipment.melee.711","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}

# AB - Bat
execute if score weapon Temp matches 612 run give @s minecraft:netherite_sword{CustomModelData:14,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"knockback",lvl:2}],display:{Name:'{"translate":"equipment.melee.612","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 712 run give @s minecraft:netherite_sword{CustomModelData:11,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,Enchantments:[{id:"knockback",lvl:2}],display:{Name:'{"translate":"equipment.melee.712","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}

# BA - Scythe
execute if score weapon Temp matches 621 run give @s minecraft:netherite_sword{CustomModelData:9,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.1,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.621","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 721 run give @s minecraft:netherite_sword{CustomModelData:5,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:12,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.9,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.721","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}

# BB - Dagger
execute if score weapon Temp matches 622 run give @s minecraft:netherite_sword{CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.0,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.622","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}
execute if score weapon Temp matches 722 run give @s minecraft:netherite_sword{CustomModelData:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7.0,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;0,42535,0,187133]}],Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"equipment.melee.722","italic":false,"color":"gray"}'},CanDestroy:["#main:breakable"],no_drop:1b,custom:"melee"}