scoreboard players add @s deathLPlayerTime 0
scoreboard players add @s deathLPlayerID 0
scoreboard players add @s deathLType 0

# store damage for skills (objective is for skills only)
scoreboard players operation $dmg SkillParams = @s damageTaken

# Explosion Damage -> 1 Explosion, 8 -> Fireball (Custom)
execute if entity @s[tag=dmgExplosion] if entity @p[tag=dealtDmgExplosion,distance=0.001..] run tag @p[tag=dealtDmgExplosion,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgExplosion] if entity @p[tag=dealtDmgExplosion,distance=0.001..] unless score @s deathLType matches 102 run scoreboard players set @s deathLType 1
execute if entity @s[tag=dmgExplosion] if entity @p[tag=dealtDmgExplosion,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgExplosion] if entity @p[tag=dealtDmgExplosion,distance=0.001..] at @s as @p[tag=dealtDmgExplosion,distance=0.001..] run function #skills:events/player/damage/deal
execute if entity @s[tag=dmgExplosion] unless entity @p[tag=dealtDmgExplosion,distance=0.001..] if entity @p[tag=dealtDmgFireball,distance=0.001..] run tag @p[tag=dealtDmgFireball,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgExplosion] unless entity @p[tag=dealtDmgExplosion,distance=0.001..] if entity @p[tag=dealtDmgFireball,distance=0.001..] run scoreboard players set @s deathLType 8
execute if entity @s[tag=dmgExplosion] unless entity @p[tag=dealtDmgExplosion,distance=0.001..] if entity @p[tag=dealtDmgFireball,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgExplosion] unless entity @p[tag=dealtDmgExplosion,distance=0.001..] if entity @p[tag=dealtDmgFireball,distance=0.001..] at @s as @p[tag=dealtDmgFireball,distance=0.001..] run function #skills:events/player/damage/deal
execute if entity @s[tag=dmgExplosion] unless entity @p[tag=dealtDmgExplosion,distance=0.001..] unless entity @p[tag=dealtDmgFireball,distance=0.001..] unless score @s deathLType matches 102 run scoreboard players set @s deathLType 1

# Fire Damage -> 2 Fire / 3 Lava / 4 On Fire
execute if entity @s[tag=dmgFire,tag=!dmgFireball,tag=!dmgSmallFireball] at @s if block ~ ~ ~ fire run scoreboard players set @s deathLType 2
execute if entity @s[tag=dmgFire,tag=!dmgFireball,tag=!dmgSmallFireball] at @s if block ~ ~ ~ lava run scoreboard players set @s deathLType 3
execute if entity @s[tag=dmgFire,tag=!dmgFireball,tag=!dmgSmallFireball] at @s unless block ~ ~ ~ lava unless block ~ ~ ~ fire run scoreboard players set @s deathLType 4

# Projectile -> 5 Arrow / 6 Trident / 7 Small Fireball / 8 Fireball / 9 Lightning
execute if entity @s[tag=dmgArrow] if entity @p[tag=dealtDmgArrow,distance=0.001..] run tag @p[tag=dealtDmgArrow,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgArrow] run scoreboard players set @s deathLType 5
execute if entity @s[tag=dmgArrow] if entity @p[tag=dealtDmgArrow,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgArrow] if entity @p[tag=dealtDmgArrow,distance=0.001..] at @s as @p[tag=dealtDmgArrow,distance=0.001..] run function #skills:events/player/arrow/hit
execute if entity @s[tag=dmgArrow] if entity @p[tag=dealtDmgArrow,distance=0.001..] at @s as @p[tag=dealtDmgArrow,distance=0.001..] run function #skills:events/player/damage/deal

execute if entity @s[tag=dmgTrident] if entity @p[tag=dealtDmgTrident,distance=0.001..] run tag @p[tag=dealtDmgTrident,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgTrident] run scoreboard players set @s deathLType 6
execute if entity @s[tag=dmgTrident] if entity @p[tag=dealtDmgTrident,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgTrident] if entity @p[tag=dealtDmgTrident,distance=0.001..] at @s as @p[tag=dealtDmgTrident,distance=0.001..] run function #skills:events/player/trident/hit
execute if entity @s[tag=dmgTrident] if entity @p[tag=dealtDmgTrident,distance=0.001..] at @s as @p[tag=dealtDmgTrident,distance=0.001..] run function #skills:events/player/damage/deal

execute if entity @s[tag=dmgSmallFireball] if entity @p[tag=dealtDmgSmallFireball,distance=0.001..] run tag @p[tag=dealtDmgSmallFireball] add dealtDmgAttacker
execute if entity @s[tag=dmgSmallFireball] run scoreboard players set @s deathLType 7
execute if entity @s[tag=dmgSmallFireball] if entity @p[tag=dealtDmgSmallFireball,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgSmallFireball] if entity @p[tag=dealtDmgSmallFireball,distance=0.001..] at @s as @p[tag=dealtDmgSmallFireball,distance=0.001..] run function #skills:events/player/damage/deal

execute if entity @s[tag=dmgFireball] if entity @p[tag=dealtDmgFireball,distance=0.001..] run tag @p[tag=dealtDmgFireball,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgFireball] run scoreboard players set @s deathLType 8
execute if entity @s[tag=dmgFireball] if entity @p[tag=dealtDmgFireball,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgFireball] if entity @p[tag=dealtDmgFireball,distance=0.001..] at @s as @p[tag=dealtDmgFireball,distance=0.001..] run function #skills:events/player/damage/deal

execute if entity @s[tag=dmgLightning] if entity @s[team=red] run tag @p[scores={dmgLightning=1..},team=!red,gamemode=adventure] add dealtDmgLightning
execute if entity @s[tag=dmgLightning] if entity @s[team=blue] run tag @p[scores={dmgLightning=1..},team=!blue,gamemode=adventure] add dealtDmgLightning
execute if entity @s[tag=dmgLightning] if entity @s[team=green] run tag @p[scores={dmgLightning=1..},team=!green,gamemode=adventure] add dealtDmgLightning
execute if entity @s[tag=dmgLightning] if entity @s[team=yellow] run tag @p[scores={dmgLightning=1..},team=!yellow,gamemode=adventure] add dealtDmgLightning
execute if entity @s[tag=dmgLightning] if entity @p[tag=dealtDmgLightning,distance=0.001..] run tag @p[tag=dealtDmgLightning,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgLightning] run scoreboard players set @s deathLType 9
execute if entity @s[tag=dmgLightning] if entity @p[tag=dealtDmgLightning,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgLightning] if entity @p[tag=dealtDmgLightning,distance=0.001..] at @s as @p[tag=dealtDmgLightning,distance=0.001..] run function #skills:events/player/damage/deal

# Projectile -> 18 Firework / 19 Firework Crossbow
execute if entity @s[tag=dmgFirework] if entity @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] run tag @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgFirework] unless entity @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] run scoreboard players set @s deathLType 18
execute if entity @s[tag=dmgFirework] if entity @p[tag=dealtDmgFirework,scores={healthFireworkT=1},distance=0.001..] run scoreboard players set @s deathLType 18
execute if entity @s[tag=dmgFirework] if entity @p[tag=dealtDmgFirework,scores={healthFireworkT=2},distance=0.001..] run scoreboard players set @s deathLType 19
execute if entity @s[tag=dmgFirework] if entity @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgFirework] if entity @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] at @s as @p[tag=dealtDmgFirework,scores={healthFireworkT=1..2},distance=0.001..] run function #skills:events/player/damage/deal

# Special -> Elytra 16 / 14 Drown / 13 Suffocation / 22 Wither
execute if entity @s[tag=dmgSpecial] run scoreboard players set @s deathLType 17
execute if entity @s[tag=dmgSpecial] if entity @s[nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] at @s if block ~ ~ ~ #health:transparent run scoreboard players set @s deathLType 16
execute if entity @s[tag=dmgSpecial,tag=!forceDeath] at @s align xyz unless block ~ ~1 ~ #health:transparent run scoreboard players set @s deathLType 13
execute if entity @s[tag=dmgSpecial,tag=forceDeath] at @s align xyz unless block ~ ~1 ~ #health:transparent run scoreboard players set @s deathLType 12
execute if entity @s[tag=dmgSpecial] at @s if block ~ ~ ~ water run scoreboard players set @s deathLType 14
execute if entity @s[tag=dmgSpecial] if data entity @s ActiveEffects[{Id:20b}] run scoreboard players set @s deathLType 22

# Bee -> 21 Bee
execute if entity @s[tag=dmgBee] run scoreboard players set @s deathLType 21

# Player -> 24 Fangs / 10 Magic / 11 Melee
execute if entity @s[tag=dmgFangs] if entity @p[tag=dealtDmgFangs,distance=0.001..] run tag @p[tag=dealtDmgFangs,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgFangs] run scoreboard players set @s deathLType 24
execute if entity @s[tag=dmgFangs] if entity @p[tag=dealtDmgFangs,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgFangs] if entity @p[tag=dealtDmgFangs,distance=0.001..] at @s as @p[tag=dealtDmgFangs,distance=0.001..] run function #skills:events/player/damage/deal
execute if entity @s[tag=dmgMagic,tag=!dmgFangs] if entity @p[tag=dealtDmgMagic,distance=0.001..] run tag @p[tag=dealtDmgMagic,distance=0.001..] add dealtDmgAttacker
execute if entity @s[tag=dmgMagic,tag=!dmgFangs] run scoreboard players set @s deathLType 10
execute if entity @s[tag=dmgMagic,tag=!dmgFangs] if entity @p[tag=dealtDmgMagic,distance=0.001..] run function health:reason/attacker
execute if entity @s[tag=dmgMagic,tag=!dmgFangs] unless entity @p[tag=dealtDmgMagic,distance=0.001..] if data entity @s ActiveEffects[{Id:19b}] run scoreboard players set @s deathLType 23
execute if entity @s[tag=dmgMagic,tag=!dmgFangs] if entity @p[tag=dealtDmgMagic,distance=0.001..] at @s as @p[tag=dealtDmgMagic,distance=0.001..] run function #skills:events/player/damage/deal
execute if entity @s[tag=!dmgExplosion,tag=!dmgFire,tag=!dmgProjectile,tag=!dmgLightning,tag=!dmgMagic,tag=!dmgSpecial,tag=!dmgFirework,tag=!dmgBe] at @s if entity @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] run tag @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] add dealtDmgAttacker
execute if entity @s[tag=!dmgExplosion,tag=!dmgFire,tag=!dmgProjectile,tag=!dmgLightning,tag=!dmgMagic,tag=!dmgSpecial,tag=!dmgFirework,tag=!dmgBee] at @s if entity @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] run scoreboard players set @s deathLType 11
execute if entity @s[tag=!dmgExplosion,tag=!dmgFire,tag=!dmgProjectile,tag=!dmgLightning,tag=!dmgMagic,tag=!dmgSpecial,tag=!dmgFirework,tag=!dmgBee] at @s unless entity @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] run scoreboard players set @s deathLType 0
execute if entity @s[tag=!dmgExplosion,tag=!dmgFire,tag=!dmgProjectile,tag=!dmgLightning,tag=!dmgMagic,tag=!dmgSpecial,tag=!dmgFirework,tag=!dmgBee] at @s if entity @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] run function health:reason/attacker
execute if entity @s[tag=!dmgExplosion,tag=!dmgFire,tag=!dmgProjectile,tag=!dmgLightning,tag=!dmgMagic,tag=!dmgSpecial,tag=!dmgFirework,tag=!dmgBee] at @s if entity @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] at @s as @p[tag=dealtDmg,tag=!dealtDmgProjectile,tag=!dealtDmgMagic,distance=0.001..6] run function #skills:events/player/damage/deal


# Depends on Block -> 15 Cactus
execute if score @s deathLType matches 0 at @s if block ~0.25 ~ ~ cactus run scoreboard players set @s deathLType 15
execute if score @s deathLType matches 0 at @s if block ~-0.25 ~ ~ cactus run scoreboard players set @s deathLType 15
execute if score @s deathLType matches 0 at @s if block ~ ~ ~0.25 cactus run scoreboard players set @s deathLType 15
execute if score @s deathLType matches 0 at @s if block ~ ~ ~-0.25 cactus run scoreboard players set @s deathLType 15
execute if score @s deathLType matches 0 at @s if block ~ ~ ~ sweet_berry_bush run scoreboard players set @s deathLType 20

# Reset
function health:reason/reset_taken

# Trigger
scoreboard players operation @s damageTakenLast = @s damageTaken
function health:triggers/damage_taken
scoreboard players reset @s damageTaken

# Unknown - 0*
# Explosion - 1*
# Fire - 2*
# Lava - 3*
# On Fire - 4*
# Arrow - 5
# Trident - 6
# Small Fireball - 7*
# Fireball - 8*
# Lightning - 9*
# Magic - 10*
# Melee - 11
# Void 12
# Suffocation 13
# Drown 14
# Cactus 15
# Elytra 16
# Unknown Special Damage 17
# Firework 18
# Firework from Crossbow 19
# Sweet Berry Bush 20
# Bee 21
# Wither 22
# Poison 23
# Fangs 24