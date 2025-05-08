$tellraw @s {"type": "translatable", "translate": "paradox.commands.send_to_prison_for_gametime.deferred", "fallback": "Sending %1$s to prison deferred until a matching player logs on", "with": [{"type": "text", "text": "$(Player)"}]}

$data remove storage paradox:paradox Deferred.SetGameTime[{Player: "$(Player)"}]
$data modify storage paradox:paradox Deferred.SetGameTime append value {Player: "$(Player)", Duration: $(Duration)}