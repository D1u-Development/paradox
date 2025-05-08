
# If they don't have the scoreboard values assigned, they are not imprisoned (return their sentence has passed)
execute unless score @s paradox.sentence.gameTime matches -2147483648..2147483647 unless score @s paradox.sentence.worldTime matches -2147483648..2147483647 run return 1

# If their scores are *both* infinity, they are a permanent prisoner
execute if score @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime if score @s paradox.sentence.worldTime = #inf paradox.sentence.worldTime run return 0

# scoreboard players set #hasGametimePassed paradox.misc 0
# execute unless score @s paradox.sentence.gameTime matches -2147483648..2147483647 run scoreboard players set #hasGametimePassed paradox.misc 1
# execute if score @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime run scoreboard players set #hasGametimePassed paradox.misc 1
# execute if score @s paradox.sentence.gameTime matches ..0 run scoreboard players set #hasGametimePassed paradox.misc 1

execute if score @s paradox.sentence.gameTime matches -2147483648..2147483647 unless score @s paradox.sentence.gameTime = #inf paradox.sentence.gameTime unless score @s paradox.sentence.gameTime matches ..0 run return 0

execute if score @s paradox.sentence.worldTime matches -2147483648..2147483647 unless score @s paradox.sentence.worldTime = #inf paradox.sentence.worldTime unless score @s paradox.sentence.worldTime <= #worldTime paradox.sentence.worldTime run return 0

return 1