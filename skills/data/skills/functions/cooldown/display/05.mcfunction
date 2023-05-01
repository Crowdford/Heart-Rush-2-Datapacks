execute store result bossbar minecraft:sc05 value run scoreboard players get value SkillCooldown
execute store result bossbar minecraft:sc05 max run scoreboard players get max SkillCooldown
bossbar set minecraft:sc05 players @s
execute if score value SkillCooldown matches ..1 run bossbar set minecraft:sc05 players