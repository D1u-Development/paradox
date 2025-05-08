scoreboard players reset @s paradox.gamesQuit

execute as @s if entity @s[predicate=paradox:in_prison] run function paradox:internal/teleport_to_prison
