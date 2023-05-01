data modify storage effectstack:trigger effect set from storage effectstack:trigger queue[0]
data remove storage effectstack:trigger queue[0]
function effectstack:triggers/effect_end
execute if data storage effectstack:trigger queue[0] run function effectstack:internal/effect_end_process_queue