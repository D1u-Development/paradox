
tellraw @s {"type":"translatable", "translate":"paradox.commands.info.free", "fallback": "You are %1$s", "with": [{"type": "translatable", "translate": "paradox.text.free", "fallback": "Free", "color": "dark_green", "bold": true}]}

tellraw @s {"type":"translatable", "translate":"paradox.commands.info.free.description.1", "fallback": "You can freely travel to and from prison via the %1$s and %2$s commands", "with": [{"type": "text", "text": "/trigger paradox.beginVisit", "color": "gray"}, {"type": "text", "text": "/trigger paradox.endVisit", "color": "gray"}]}
tellraw @s {"type":"translatable", "translate":"paradox.commands.info.free.description.2", "fallback": "You will be teleported to prison spawn when you begin a visit, and return to your original position when you end a visit"}
