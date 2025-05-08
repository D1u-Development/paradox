
execute if entity @s[type=!player] run return fail

scoreboard players set @s paradox.isPrisoner 1

execute unless score @s paradox.sentence.gameTime matches -2147483648..2147483647 run scoreboard players operation @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime
execute unless score @s paradox.sentence.worldTime matches -2147483648..2147483647 run scoreboard players operation @s paradox.sentence.worldTime = #inf paradox.sentence.worldTime

function paradox:custom/on_send_to_prison
