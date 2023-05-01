execute store result bossbar minecraft:sc03 value run scoreboard players get value SkillCooldown
execute store result bossbar minecraft:sc03 max run scoreboard players get max SkillCooldown
bossbar set minecraft:sc03 players @s
execute if score value SkillCooldown matches ..1 run bossbar set minecraft:sc03 players