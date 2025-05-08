
tellraw @s {"type":"translatable", "translate":"paradox.commands.info.prisoner", "fallback": "You are a %1$s", "with": [{"type": "translatable", "translate": "paradox.text.prisoner", "fallback": "Prisoner", "color": "gray", "bold": true}]}

tellraw @s {"type":"translatable", "translate":"paradox.commands.info.prisoner.description.1", "fallback": "You will remain in prison until your sentence is up, at which point you will be freed and teleported back to your original position"}

function paradox:trigger/info/sentence
