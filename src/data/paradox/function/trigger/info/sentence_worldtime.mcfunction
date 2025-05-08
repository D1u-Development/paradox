

scoreboard players operation #duration paradox.misc = @s paradox.sentence.worldTime
scoreboard players operation #duration paradox.misc -= #worldTime paradox.sentence.worldTime

function paradox:internal/format_duration

tellraw @s {"type":"translatable","translate":"paradox.commands.info.prisoner.sentence.worldtime","fallback":"You must wait %1$s day(s), %2$s hour(s), %3$s minute(s), %4$s second(s) in world time (passes when you are offline).", "with":[{"type": "score","score": {"name": "#duration.days", "objective": "paradox.misc"}, "color": "#FCA800"}, {"type": "score","score": {"name": "#duration.hours", "objective": "paradox.misc"}, "color": "#FCA800"}, {"type": "score","score": {"name": "#duration.minutes", "objective": "paradox.misc"}, "color": "#FCA800"}, {"type": "score","score": {"name": "#duration.seconds", "objective": "paradox.misc"}, "color": "#FCA800"}]}

