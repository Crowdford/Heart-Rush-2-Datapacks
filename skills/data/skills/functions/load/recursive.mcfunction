data modify storage skills:main skill set from storage skills:main temp[0]
data remove storage skills:main temp[0]
scoreboard players add count skills 1

# load skill 
function skills:load/load_skill

# Recursion
execute if data storage skills:main temp[0] unless score count skills matches 7.. run function skills:load/recursive