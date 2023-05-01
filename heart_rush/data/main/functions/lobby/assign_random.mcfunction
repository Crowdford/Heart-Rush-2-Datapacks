## Get Data
# count teams
scoreboard players set teams Temp 0
execute if entity @a[team=red] run scoreboard players add teams Temp 1
execute if entity @a[team=blue] run scoreboard players add teams Temp 1
execute if entity @a[team=green] run scoreboard players add teams Temp 1
execute if entity @a[team=yellow] run scoreboard players add teams Temp 1

# count players in team
scoreboard players set red Temp 0
scoreboard players set blue Temp 0
scoreboard players set green Temp 0
scoreboard players set yellow Temp 0
execute as @a[team=red] run scoreboard players add red Temp 1
execute as @a[team=blue] run scoreboard players add blue Temp 1
execute as @a[team=green] run scoreboard players add green Temp 1
execute as @a[team=yellow] run scoreboard players add yellow Temp 1

# Smallest Team 
scoreboard players set min Temp 100
execute if score red Temp matches 1.. run scoreboard players operation min Temp < red Temp
execute if score blue Temp matches 1.. run scoreboard players operation min Temp < blue Temp
execute if score green Temp matches 1.. run scoreboard players operation min Temp < green Temp
execute if score yellow Temp matches 1.. run scoreboard players operation min Temp < yellow Temp

# Biggest Team 
scoreboard players set max Temp -100
execute if score red Temp matches 1.. run scoreboard players operation max Temp > red Temp
execute if score blue Temp matches 1.. run scoreboard players operation max Temp > blue Temp
execute if score green Temp matches 1.. run scoreboard players operation max Temp > green Temp
execute if score yellow Temp matches 1.. run scoreboard players operation max Temp > yellow Temp

# amount of random players 
scoreboard players set random Temp 0
execute as @a[team=random] run scoreboard players add random Temp 1

## Join into Team
# 1 - join into team red if there are no teams
execute if score teams Temp matches 0 run team join red @s[team=random]

# 2 - if there's one team create the team that's across from them
execute if score teams Temp matches 1 if entity @a[team=red] run team join blue @s[team=random]
execute if score teams Temp matches 1 if entity @a[team=blue] run team join red @s[team=random]
execute if score teams Temp matches 1 if entity @a[team=green] run team join yellow @s[team=random]
execute if score teams Temp matches 1 if entity @a[team=yellow] run team join green @s[team=random]

# 3 - if there's three balanced teams create a fourth one unless this would make the balance really bad
execute if score teams Temp matches 3 if score max Temp = min Temp if score random Temp >= max Temp unless entity @a[team=red] run team join red @s[team=random]
execute if score teams Temp matches 3 if score max Temp = min Temp if score random Temp >= max Temp unless entity @a[team=blue] run team join blue @s[team=random]
execute if score teams Temp matches 3 if score max Temp = min Temp if score random Temp >= max Temp unless entity @a[team=green] run team join green @s[team=random]
execute if score teams Temp matches 3 if score max Temp = min Temp if score random Temp >= max Temp unless entity @a[team=yellow] run team join yellow @s[team=random]

# 4 - if there's two 1 player teams and only 1 player thats randomized, create new 1 player team
execute if score teams Temp matches 2 if score max Temp matches 1 if score random Temp matches 1 unless entity @a[team=red] run team join red @s[team=random]
execute if score teams Temp matches 2 if score max Temp matches 1 if score random Temp matches 1 unless entity @a[team=blue] run team join blue @s[team=random]
execute if score teams Temp matches 2 if score max Temp matches 1 if score random Temp matches 1 unless entity @a[team=green] run team join green @s[team=random]
execute if score teams Temp matches 2 if score max Temp matches 1 if score random Temp matches 1 unless entity @a[team=yellow] run team join yellow @s[team=random]

# 5 - if there's two teams that aren't across from each other, create a third one unless that would make the balance bad
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=red] if entity @a[team=green] run team join blue @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=red] if entity @a[team=yellow] run team join blue @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=blue] if entity @a[team=green] run team join red @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=blue] if entity @a[team=yellow] run team join red @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=green] if entity @a[team=red] run team join yellow @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=green] if entity @a[team=blue] run team join yellow @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=yellow] if entity @a[team=red] run team join green @s[team=random]
execute if score teams Temp matches 2 if score random Temp >= max Temp if entity @a[team=yellow] if entity @a[team=blue] run team join green @s[team=random]

# 6 - if the minimum and maximum is the same and above/equal 2, create new team unless it would be a single player - preferable across from each other
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=red] if entity @a[team=blue] run team join red @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=blue] if entity @a[team=red] run team join blue @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=green] if entity @a[team=yellow] run team join green @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=yellow] if entity @a[team=green] run team join yellow @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=red] run team join red @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=blue] run team join blue @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=green] run team join green @s[team=random]
execute if score min Temp = max Temp if score min Temp matches 2.. if score random Temp matches 2.. unless entity @a[team=yellow] run team join yellow @s[team=random]

## 7 - join into smallest team
execute if score teams Temp matches 2.. if entity @a[team=red] if score min Temp = red Temp run team join red @s[team=random]
execute if score teams Temp matches 2.. if entity @a[team=blue] if score min Temp = blue Temp run team join blue @s[team=random]
execute if score teams Temp matches 2.. if entity @a[team=green] if score min Temp = green Temp run team join green @s[team=random]
execute if score teams Temp matches 2.. if entity @a[team=yellow] if score min Temp = yellow Temp run team join yellow @s[team=random]

# 8 - fail safe #1
execute if entity @a[team=red] run team join red @s[team=random]
execute if entity @a[team=blue] run team join blue @s[team=random]
execute if entity @a[team=green] run team join green @s[team=random]
execute if entity @a[team=yellow] run team join yellow @s[team=random]

# 9 - fail safe #2
team join red @s[team=random]

# Debug
#tellraw @a ["Debug Info: ",{"selector":"@s"},", max: ",{"score":{"name":"max","objective":"Temp"}},", min: ",{"score":{"name":"min","objective":"Temp"}},", teams: ",{"score":{"name":"teams","objective":"Temp"}},", left: ",{"score":{"name":"random","objective":"Temp"}}]