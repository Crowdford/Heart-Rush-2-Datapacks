scoreboard players operation id Temp = @s fireballOwner
execute as @a if score @s playerID = id Temp run tag @s add dealtDmgFireball

execute positioned ~ ~2 ~ run function main:game/block/devalue
execute positioned ~ ~1 ~ run function main:game/block/devalue
execute positioned ~ ~ ~ run function main:game/block/devalue
execute positioned ~ ~-1 ~ run function main:game/block/devalue
execute positioned ~ ~-2 ~ run function main:game/block/devalue
execute positioned ~2 ~ ~ run function main:game/block/devalue
execute positioned ~1 ~ ~ run function main:game/block/devalue
execute positioned ~ ~ ~ run function main:game/block/devalue
execute positioned ~-1 ~ ~ run function main:game/block/devalue
execute positioned ~-2 ~ ~ run function main:game/block/devalue
execute positioned ~ ~ ~2 run function main:game/block/devalue
execute positioned ~ ~ ~1 run function main:game/block/devalue
execute positioned ~ ~ ~ run function main:game/block/devalue
execute positioned ~ ~ ~-1 run function main:game/block/devalue
execute positioned ~ ~ ~-2 run function main:game/block/devalue
kill @s
