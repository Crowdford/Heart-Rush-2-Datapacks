# Remove Single Duplicates
data modify storage simplify:main temp set value []
data modify storage simplify:main char set value "#"
execute if data storage simplify:main in[0] run function application_name:internal/remove_single_duplicates
data modify storage simplify:main in set from storage simplify:main temp

# Remove Double Duplicates
data modify storage simplify:main temp set value []
data modify storage simplify:main char set value "#"
data modify storage simplify:main char2 set value "#"
execute if data storage simplify:main in[0] if data storage simplify:main in[1] run function application_name:internal/remove_double_duplicates
data modify storage simplify:main in set from storage simplify:main temp

data modify storage simplify:main temp set value []
data modify storage simplify:main char set value "#"
data modify storage simplify:main char2 set value "#"
data modify storage simplify:main char3 set from storage simplify:main in[0]
data remove storage simplify:main in[0]
execute if data storage simplify:main in[0] if data storage simplify:main in[1] run function application_name:internal/remove_double_duplicates
data modify storage simplify:main in set from storage simplify:main temp
data modify storage simplify:main in prepend from storage simplify:main char3

# Recursive Handling
scoreboard players reset $lower string.simplify
scoreboard players reset $upper string.simplify
scoreboard players reset $length string.simplify
execute store result score $total string.simplify run data get storage simplify:main in
function application_name:internal/simplify_recursive

# Check if extra char would've ended via word
execute if score $total string.simplify matches 0 if score $lower string.simplify matches 2.. run data modify storage simplify:main out append value ""
execute if score $total string.simplify matches 0 if score $lower string.simplify matches 2.. run function application_name:internal/end_word
execute if score $total string.simplify matches 0 if score $upper string.simplify matches 2.. run data modify storage simplify:main out append value ""
execute if score $total string.simplify matches 0 if score $upper string.simplify matches 2.. run function application_name:internal/end_word

# First Char to Upper Case
data modify storage case:io in set from storage simplify:main out[0]
function case:call/to_upper
data modify storage simplify:main out[0] set from storage case:io out


# Force Shorten >=4
execute store result score $letters string.simplify run data get storage simplify:main out
data modify storage simplify:io letters set from storage simplify:main out
#execute if score $letters string.simplify matches 1..2 run data modify storage simplify:main out prepend value "~"
#execute if score $letters string.simplify matches 1..3 run data modify storage simplify:main out append value "~"
#execute if score $letters string.simplify matches 1 run data modify storage simplify:main out append value "~"
#function application_name:internal/force_shorten

# Force Name to Exist
#execute unless data storage simplify:main out[0] run data modify storage simplify:main out set value ["","","",""]

# Prefer 4 numbers over non-4 letter names
#execute store result score $numbers string.simplify run data get storage simplify:io numbers 
#execute unless score $letters string.simplify matches 4 if score $numbers string.simplify matches 4 run data modify storage simplify:main out set from storage simplify:io numbers

# L + DD names
#execute if score $letters string.simplify matches 5.. if score $numbers string.simplify matches 2 run data modify storage simplify:main out set value []
#execute if score $letters string.simplify matches 5.. if score $numbers string.simplify matches 2 run data modify storage simplify:main out append from storage case:io in
#execute if score $letters string.simplify matches 5.. if score $numbers string.simplify matches 2 run data modify storage simplify:main out append from storage simplify:io numbers[0]
#execute if score $letters string.simplify matches 5.. if score $numbers string.simplify matches 2 run data modify storage simplify:main out append from storage simplify:io numbers[1]
#execute if score $letters string.simplify matches 5.. if score $numbers string.simplify matches 2 run data modify storage simplify:main out append value "~"

# numbers if no letters
#execute if score $letters string.simplify matches ..0 run data modify storage simplify:main out set value ["","","",""]
#execute if score $letters string.simplify matches ..0 if score $numbers string.simplify matches 1.. run data modify storage simplify:main out[0] set from storage simplify:io numbers[0]
#execute if score $letters string.simplify matches ..0 if score $numbers string.simplify matches 2.. run data modify storage simplify:main out[1] set from storage simplify:io numbers[1]
#execute if score $letters string.simplify matches ..0 if score $numbers string.simplify matches 3.. run data modify storage simplify:main out[2] set from storage simplify:io numbers[2]
#execute if score $letters string.simplify matches ..0 if score $numbers string.simplify matches 4.. run data modify storage simplify:main out[3] set from storage simplify:io numbers[3]
#execute if score $letters string.simplify matches ..0 if score $numbers string.simplify matches ..0 run data modify storage simplify:main out set value ["X","","",""]
data modify storage simplify:main out append from storage simplify:io numbers[]

## offbrand name version
# increment number
function application_name:internal/number_increment

# find vowels
data modify storage simplify:main vowels set value []
data modify storage simplify:main vowel_repl set from storage simplify:main out
data remove storage simplify:main vowel_repl[0]
function application_name:internal/vowel_find
function application_name:internal/vowel_mix

execute store result score vowel Temp if data storage simplify:main vowels[]

data modify storage simplify:main vowel_repl set from storage simplify:main out
data remove storage simplify:main vowel_repl[0]
data modify storage simplify:main vowel_repl_out set value []
data modify storage simplify:main vowel_repl_out append from storage simplify:main out[0]
function application_name:internal/vowel_repl
data modify storage simplify:main out set from storage simplify:main vowel_repl_out

execute if score vowel Temp matches 1 run data modify storage simplify:main vowel_repl set from storage simplify:main out
execute if score vowel Temp matches 1 run data remove storage simplify:main vowel_repl[0]
execute if score vowel Temp matches 1 run data modify storage simplify:main vowel_repl_out set value []
execute if score vowel Temp matches 1 run data modify storage simplify:main vowel_repl_out append from storage simplify:main out[0]
execute if score vowel Temp matches 1 run function application_name:internal/vowel_repl_single
execute if score vowel Temp matches 1 run data modify storage simplify:main out set from storage simplify:main vowel_repl_out


data modify storage simplify:main vowel_repl set from storage simplify:main out
data remove storage simplify:main vowel_repl[0]
data modify storage simplify:main vowel_repl_out set value []
data modify storage simplify:main vowel_repl_out append from storage simplify:main out[0]
function application_name:internal/vowel_repl2
data modify storage simplify:main out set from storage simplify:main vowel_repl_out
