data modify storage simplify:main temp2 set from storage simplify:main vowels[0][0]
data modify storage simplify:main temp3 set from storage simplify:main vowels[0][1]
data remove storage simplify:main vowels[0]
execute if data storage simplify:main {temp2:"a",temp3:"l"} run data modify storage simplify:main char set value "a"
execute if data storage simplify:main {temp2:"a",temp3:"u"} run data modify storage simplify:main char set value "A"
execute if data storage simplify:main {temp2:"e",temp3:"l"} run data modify storage simplify:main char set value "e"
execute if data storage simplify:main {temp2:"e",temp3:"u"} run data modify storage simplify:main char set value "E"
execute if data storage simplify:main {temp2:"i",temp3:"l"} run data modify storage simplify:main char set value "i"
execute if data storage simplify:main {temp2:"i",temp3:"u"} run data modify storage simplify:main char set value "I"
execute if data storage simplify:main {temp2:"o",temp3:"l"} run data modify storage simplify:main char set value "o"
execute if data storage simplify:main {temp2:"o",temp3:"u"} run data modify storage simplify:main char set value "O"
execute if data storage simplify:main {temp2:"u",temp3:"l"} run data modify storage simplify:main char set value "u"
execute if data storage simplify:main {temp2:"u",temp3:"u"} run data modify storage simplify:main char set value "U"