# check for trig done
data modify storage dynamic_skill:main temp_bits set value {0:0b,1:0b,2:0b,trig_done:1b}
data modify storage dynamic_skill:main temp_bits.0 set from storage dynamic_skill:main binary[0]
data modify storage dynamic_skill:main temp_bits.1 set from storage dynamic_skill:main binary[1]
data modify storage dynamic_skill:main temp_bits.2 set from storage dynamic_skill:main binary[2]
execute if data storage dynamic_skill:main temp_bits{0:1b} run data modify storage dynamic_skill:main temp_bits.trig_done set value 0b
execute if data storage dynamic_skill:main temp_bits{1:1b} run data modify storage dynamic_skill:main temp_bits.trig_done set value 0b
execute if data storage dynamic_skill:main temp_bits{2:1b} run data modify storage dynamic_skill:main temp_bits.trig_done set value 0b
execute if data storage dynamic_skill:main temp_bits{trig_done:0b} run function dynamic_skill:internal/effect/special/util/effect_list_list