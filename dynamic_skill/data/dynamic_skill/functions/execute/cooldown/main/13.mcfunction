# load cooldown
scoreboard players set $sid SkillParams 13
function dynamic_skill:execute/cooldown/load

# active cooldown 
function dynamic_skill:execute/cooldown/main

# store cooldown
function dynamic_skill:execute/cooldown/store