execute store result bossbar minecraft:sc18 value run scoreboard players get value SkillCooldown
execute store result bossbar minecraft:sc18 max run scoreboard players get max SkillCooldown
bossbar set minecraft:sc18 players @s
execute if score value SkillCooldown matches ..1 run bossbar set minecraft:sc18 players