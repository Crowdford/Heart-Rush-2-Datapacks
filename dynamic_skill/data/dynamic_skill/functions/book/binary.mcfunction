data modify storage dynamic_skill:main char set from storage universal:strings io[0]
data remove storage universal:strings io[0]
data modify storage dynamic_skill:main bits set value []
execute if data storage dynamic_skill:main {char:"A"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"B"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"C"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"D"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"E"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"F"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"G"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"H"} run data modify storage dynamic_skill:main bits set value [0b,0b,0b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"I"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"J"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"K"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"L"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"M"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"N"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"O"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"P"} run data modify storage dynamic_skill:main bits set value [0b,0b,1b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"Q"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"R"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"S"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"T"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"U"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"V"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"W"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"X"} run data modify storage dynamic_skill:main bits set value [0b,1b,0b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"Y"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"Z"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"a"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"b"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"c"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"d"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"e"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"f"} run data modify storage dynamic_skill:main bits set value [0b,1b,1b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"g"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"h"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"i"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"j"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"k"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"l"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"m"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"n"} run data modify storage dynamic_skill:main bits set value [1b,0b,0b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"o"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"p"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"q"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"r"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"s"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"t"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"u"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"v"} run data modify storage dynamic_skill:main bits set value [1b,0b,1b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"w"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"x"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"y"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"z"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"0"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"1"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"2"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"3"} run data modify storage dynamic_skill:main bits set value [1b,1b,0b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"4"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,0b,0b,0b]
execute if data storage dynamic_skill:main {char:"5"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,0b,0b,1b]
execute if data storage dynamic_skill:main {char:"6"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,0b,1b,0b]
execute if data storage dynamic_skill:main {char:"7"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,0b,1b,1b]
execute if data storage dynamic_skill:main {char:"8"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,1b,0b,0b]
execute if data storage dynamic_skill:main {char:"9"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,1b,0b,1b]
execute if data storage dynamic_skill:main {char:"+"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,1b,1b,0b]
execute if data storage dynamic_skill:main {char:"/"} run data modify storage dynamic_skill:main bits set value [1b,1b,1b,1b,1b,1b]
execute if data storage dynamic_skill:main {char:"!"} run data modify storage dynamic_skill:main bits set value [2b]