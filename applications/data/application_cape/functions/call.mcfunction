#say called
# reset binary
data modify storage dynamic_skill:main binary set value []
scoreboard players set sotdStep dynamic_skill 0

# load skull #1
function application_cape:internal_fake/skull


#schedule function application_cape:skip 1t