$tellraw @s {"type": "translatable", "translate": "paradox.commands.send_to_prison_for_worldtime.deferred", "fallback": "Sending %1$s to prison deferred until a matching player logs on", "with": [{"type": "text", "text": "$(Player)"}]}

$data remove storage paradox:paradox Deferred.SetWorldTime[{Player: "$(Player)"}]
$data modify storage paradox:paradox Deferred.SetWorldTime append value {Player: "$(Player)", Duration: $(Duration)}