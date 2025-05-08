
execute as @s if entity @s[scores={paradox.isPrisoner=1,paradox.isVisiting=1}] run scoreboard players set @s paradox.isVisiting 0

execute as @s if entity @s[scores={paradox.gamesQuit=1..}] run function paradox:internal/login

function paradox:internal/ensure_dimension/ensure_dimension

function paradox:trigger/update_triggers
function paradox:trigger/handle_triggers

function paradox:internal/sentence/update_sentence