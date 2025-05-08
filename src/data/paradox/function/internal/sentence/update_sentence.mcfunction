
execute if score @s paradox.sentence.gameTime matches 1.. unless score @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime run \
	scoreboard players remove @s paradox.sentence.gameTime 1

execute if function paradox:internal/sentence/has_sentence_passed run function paradox:internal/release_from_prison
