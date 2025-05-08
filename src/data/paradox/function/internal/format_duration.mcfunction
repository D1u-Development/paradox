

scoreboard players operation #duration.ticks paradox.misc = #duration paradox.misc
scoreboard players operation #duration.seconds paradox.misc = #duration paradox.misc
scoreboard players operation #duration.minutes paradox.misc = #duration paradox.misc
scoreboard players operation #duration.hours paradox.misc = #duration paradox.misc
scoreboard players operation #duration.days paradox.misc = #duration paradox.misc

# Ticks
scoreboard players operation #duration.ticks paradox.misc %= #CONST.SECONDS_TO_TICKS paradox.misc

# Seconds
scoreboard players operation #duration.seconds paradox.misc %= #CONST.MINUTES_TO_TICKS paradox.misc
scoreboard players operation #duration.seconds paradox.misc /= #CONST.SECONDS_TO_TICKS paradox.misc

# Minutes
scoreboard players operation #duration.minutes paradox.misc %= #CONST.HOURS_TO_TICKS paradox.misc
scoreboard players operation #duration.minutes paradox.misc /= #CONST.MINUTES_TO_TICKS paradox.misc

# Hours
scoreboard players operation #duration.hours paradox.misc %= #CONST.DAYS_TO_TICKS paradox.misc
scoreboard players operation #duration.hours paradox.misc /= #CONST.HOURS_TO_TICKS paradox.misc

# Days
scoreboard players operation #duration.days paradox.misc /= #CONST.DAYS_TO_TICKS paradox.misc

# Return
return 1
