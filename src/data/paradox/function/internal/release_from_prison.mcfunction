
execute if entity @s[type=!player] run return fail

scoreboard players set @s paradox.isPrisoner 0

scoreboard players reset @s paradox.sentence.gameTime
scoreboard players reset @s paradox.sentence.worldTime

function paradox:custom/on_release_from_prison