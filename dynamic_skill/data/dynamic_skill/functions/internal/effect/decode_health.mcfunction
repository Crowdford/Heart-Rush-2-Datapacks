# get health
data modify storage text:lib all set from storage dynamic_skill:trees health
data modify storage text:in bits set from storage dynamic_skill:main binary
function htc:do_convert 
data modify storage dynamic_skill:main binary set from storage text:int bits
function dynamic_skill:internal/effect/write_arg_tree