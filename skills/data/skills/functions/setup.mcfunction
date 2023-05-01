scoreboard objectives add skills dummy
scoreboard objectives add SkillIDs dummy
scoreboard objectives add SkillsCondition dummy
scoreboard objectives add SkillCooldown dummy
scoreboard objectives add SkillParams dummy
scoreboard objectives add ObjectSkill dummy
scoreboard objectives add ObjectID dummy
scoreboard objectives add ObjectLife dummy
scoreboard objectives add Random dummy
scoreboard players reset * SkillIDs
scoreboard players reset * SkillsCondition
scoreboard players reset * SkillParams
scoreboard players reset * SkillCooldown
scoreboard players set id skills 0

# reenabled skill reset on reload
scoreboard players reset * skill_1
scoreboard players reset * skill_2
scoreboard players reset * skill_3

data modify storage skills:main skills set value []
data modify storage skills:main stack set value []
data modify storage skills:main players set value [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
function #skills:register
function #skills:start

# bossbars
function skills:cooldown/setup