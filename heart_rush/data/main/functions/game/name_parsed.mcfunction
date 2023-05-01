data modify storage sbc:main player set value {}
data modify storage sbc:main player.full set from storage string:io out
function application_name:internal/simplify_callback
data modify storage sbc:main player.short set from storage simplify:io out
execute as @a if score @s playerID = $callback string run function main:store/store

function main:lobby/setup_skull