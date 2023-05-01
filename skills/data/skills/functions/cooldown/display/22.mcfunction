execute store result bossbar minecraft:sc22 value run scoreboard players get value SkillCooldown
execute store result bossbar minecraft:sc22 max run scoreboard players get max SkillCooldown
bossbar set minecraft:sc22 players @s
execute if score value SkillCooldown matches ..1 run bossbar set minecraft:sc22 players