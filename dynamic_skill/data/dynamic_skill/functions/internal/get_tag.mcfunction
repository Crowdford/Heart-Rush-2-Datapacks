execute store result score id dynamic_skill run data get storage dynamic_skill:main triggers[0].id

#tellraw @a {"score":{"name":"id","objective":"dynamic_skill"}}

execute if score id dynamic_skill matches 0 run tag @s add dynSkill_trigger0
execute if score id dynamic_skill matches 1 run tag @s add dynSkill_trigger1
execute if score id dynamic_skill matches 2 run tag @s add dynSkill_trigger2
execute if score id dynamic_skill matches 3 run tag @s add dynSkill_trigger3
execute if score id dynamic_skill matches 4 run tag @s add dynSkill_trigger4
execute if score id dynamic_skill matches 5 run tag @s add dynSkill_trigger5
execute if score id dynamic_skill matches 6 run tag @s add dynSkill_trigger6
execute if score id dynamic_skill matches 7 run tag @s add dynSkill_trigger7
execute if score id dynamic_skill matches 8 run tag @s add dynSkill_trigger8
execute if score id dynamic_skill matches 9 run tag @s add dynSkill_trigger9
execute if score id dynamic_skill matches 10 run tag @s add dynSkill_trigger10
execute if score id dynamic_skill matches 11 run tag @s add dynSkill_trigger11
execute if score id dynamic_skill matches 12 run tag @s add dynSkill_trigger12
execute if score id dynamic_skill matches 13 run tag @s add dynSkill_trigger13
execute if score id dynamic_skill matches 14 run tag @s add dynSkill_trigger14
execute if score id dynamic_skill matches 15 run tag @s add dynSkill_trigger15
execute if score id dynamic_skill matches 16 run tag @s add dynSkill_trigger16
execute if score id dynamic_skill matches 17 run tag @s add dynSkill_trigger17
execute if score id dynamic_skill matches 18 run tag @s add dynSkill_trigger18
execute if score id dynamic_skill matches 19 run tag @s add dynSkill_trigger19
execute if score id dynamic_skill matches 20 run tag @s add dynSkill_trigger20
execute if score id dynamic_skill matches 21 run tag @s add dynSkill_trigger21
execute if score id dynamic_skill matches 22 run tag @s add dynSkill_trigger22
execute if score id dynamic_skill matches 23 run tag @s add dynSkill_trigger23
execute if score id dynamic_skill matches 24 run tag @s add dynSkill_trigger24
execute if score id dynamic_skill matches 25 run tag @s add dynSkill_trigger25
execute if score id dynamic_skill matches 26 run tag @s add dynSkill_trigger26
execute if score id dynamic_skill matches 27 run tag @s add dynSkill_trigger27
execute if score id dynamic_skill matches 28 run tag @s add dynSkill_trigger28
execute if score id dynamic_skill matches 29 run tag @s add dynSkill_trigger29
execute if score id dynamic_skill matches 30 run tag @s add dynSkill_trigger30
execute if score id dynamic_skill matches 31 run tag @s add dynSkill_trigger31
execute if score id dynamic_skill matches 32 run tag @s add dynSkill_trigger32
execute if score id dynamic_skill matches 33 run tag @s add dynSkill_trigger33
execute if score id dynamic_skill matches 34 run tag @s add dynSkill_trigger34
execute if score id dynamic_skill matches 35 run tag @s add dynSkill_trigger35
execute if score id dynamic_skill matches 36 run tag @s add dynSkill_trigger36
execute if score id dynamic_skill matches 37 run tag @s add dynSkill_trigger37
execute if score id dynamic_skill matches 38 run tag @s add dynSkill_trigger38
execute if score id dynamic_skill matches 39 run tag @s add dynSkill_trigger39
execute if score id dynamic_skill matches 40 run tag @s add dynSkill_trigger40
execute if score id dynamic_skill matches 41 run tag @s add dynSkill_trigger41
execute if score id dynamic_skill matches 42 run tag @s add dynSkill_trigger42
execute if score id dynamic_skill matches 43 run tag @s add dynSkill_trigger43
execute if score id dynamic_skill matches 44 run tag @s add dynSkill_trigger44
execute if score id dynamic_skill matches 45 run tag @s add dynSkill_trigger45

data remove storage dynamic_skill:main triggers[0]
execute if data storage dynamic_skill:main triggers[0] run function dynamic_skill:internal/get_tag