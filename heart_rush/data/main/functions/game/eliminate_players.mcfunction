execute if score red lives matches -1 run gamemode spectator @a[team=red]
execute if score red lives matches -1 run tag @a[team=red] add eliminated
execute if score blue lives matches -1 run gamemode spectator @a[team=blue]
execute if score blue lives matches -1 run tag @a[team=blue] add eliminated
execute if score green lives matches -1 run gamemode spectator @a[team=green]
execute if score green lives matches -1 run tag @a[team=green] add eliminated
execute if score yellow lives matches -1 run gamemode spectator @a[team=yellow]
execute if score yellow lives matches -1 run tag @a[team=yellow] add eliminated
execute as @a[gamemode=spectator,team=!spectator] unless score @s respawn matches 1.. run team join spectator @s