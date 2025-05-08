
tellraw @s {"type":"translatable", "translate":"paradox.commands.info.prisoner.sentence.title", "fallback": "Your current sentence is: "}

execute if function paradox:internal/sentence/is_permanent run return run tellraw @s {"type": "translatable", "translate": "paradox.commands.info.prisoner.sentence.permanent", "fallback": "PERMANENT", "color": "dark_red", "bold": true, "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"type": "translatable", "translate": "paradox.commands.info.prisoner.sentence.permanent.hover", "fallback": "This sentence will never end"}}}

execute if score @s paradox.sentence.gameTime matches -2147483648..2147483647 unless score @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime if score @s paradox.sentence.gameTime matches 1.. run \
	function paradox:trigger/info/sentence_gametime
	
execute if score @s paradox.sentence.worldTime matches -2147483648..2147483647 unless score @s paradox.sentence.worldTime = #inf paradox.sentence.worldTime if score @s paradox.sentence.worldTime > #worldTime paradox.sentence.worldTime run \
	function paradox:trigger/info/sentence_worldtime