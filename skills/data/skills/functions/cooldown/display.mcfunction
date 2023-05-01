execute if score id SkillCooldown matches 01 run function skills:cooldown/display/01
execute if score id SkillCooldown matches 02 run function skills:cooldown/display/02
execute if score id SkillCooldown matches 03 run function skills:cooldown/display/03
execute if score id SkillCooldown matches 04 run function skills:cooldown/display/04
execute if score id SkillCooldown matches 05 run function skills:cooldown/display/05
execute if score id SkillCooldown matches 06 run function skills:cooldown/display/06
execute if score id SkillCooldown matches 07 run function skills:cooldown/display/07
execute if score id SkillCooldown matches 08 run function skills:cooldown/display/08
execute if score id SkillCooldown matches 09 run function skills:cooldown/display/09
execute if score id SkillCooldown matches 10 run function skills:cooldown/display/10
execute if score id SkillCooldown matches 11 run function skills:cooldown/display/11
execute if score id SkillCooldown matches 12 run function skills:cooldown/display/12
execute if score id SkillCooldown matches 13 run function skills:cooldown/display/13
execute if score id SkillCooldown matches 14 run function skills:cooldown/display/14
execute if score id SkillCooldown matches 15 run function skills:cooldown/display/15
execute if score id SkillCooldown matches 16 run function skills:cooldown/display/16
execute if score id SkillCooldown matches 17 run function skills:cooldown/display/17
execute if score id SkillCooldown matches 18 run function skills:cooldown/display/18
execute if score id SkillCooldown matches 19 run function skills:cooldown/display/19
execute if score id SkillCooldown matches 20 run function skills:cooldown/display/20
execute if score id SkillCooldown matches 21 run function skills:cooldown/display/21
execute if score id SkillCooldown matches 22 run function skills:cooldown/display/22
execute if score id SkillCooldown matches 23 run function skills:cooldown/display/23
execute if score id SkillCooldown matches 24 run function skills:cooldown/display/24
execute if score id SkillCooldown matches 25 run function skills:cooldown/display/25
execute if score id SkillCooldown matches 26 run function skills:cooldown/display/26
execute if score id SkillCooldown matches 27 run function skills:cooldown/display/27
execute if score id SkillCooldown matches 28 run function skills:cooldown/display/28
execute if score id SkillCooldown matches 29 run function skills:cooldown/display/29
execute if score id SkillCooldown matches 30 run function skills:cooldown/display/30
execute if score id SkillCooldown matches 31 run function skills:cooldown/display/31
execute if score id SkillCooldown matches 32 run function skills:cooldown/display/32
execute if score value SkillCooldown = max SkillCooldown run function skills:cooldown/set_name
execute at @s run function #skills:events/player/cooldown/main
execute if score value SkillCooldown matches 1 at @s unless entity @s[tag=dontCooldownTrigger] run function #skills:events/player/cooldown/end