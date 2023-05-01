data modify storage simplify:main temp set from storage simplify:main out[-1]
execute if data storage simplify:main {temp:"0"} run data modify storage simplify:main out[-1] set value "1"
execute if data storage simplify:main {temp:"1"} run data modify storage simplify:main out[-1] set value "2"
execute if data storage simplify:main {temp:"2"} run data modify storage simplify:main out[-1] set value "3"
execute if data storage simplify:main {temp:"3"} run data modify storage simplify:main out[-1] set value "4"
execute if data storage simplify:main {temp:"4"} run data modify storage simplify:main out[-1] set value "5"
execute if data storage simplify:main {temp:"5"} run data modify storage simplify:main out[-1] set value "6"
execute if data storage simplify:main {temp:"6"} run data modify storage simplify:main out[-1] set value "7"
execute if data storage simplify:main {temp:"7"} run data modify storage simplify:main out[-1] set value "8"
execute if data storage simplify:main {temp:"8"} run data modify storage simplify:main out[-1] set value "9"
execute if data storage simplify:main {temp:"9"} run function application_name:internal/number_increment_prev