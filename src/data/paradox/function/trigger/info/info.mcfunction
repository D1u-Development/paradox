
scoreboard players reset @s paradox.info

tellraw @s ""
tellraw @s {"type":"translatable", "translate":"paradox.commands.info.title", "fallback": "JoshieGemFinder's Prison Manager", "bold": true, "underlined": true, "color": "gray"}

execute if score @s paradox.isPrisoner matches 1 run \
	function paradox:trigger/info/prisoner
execute unless score @s paradox.isPrisoner matches 1 run \
	function paradox:trigger/info/visitor
	

tellraw @s ""