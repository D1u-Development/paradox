
$tellraw @s {"type": "translatable", "translate": "paradox.commands.send_to_prison_for_time.no_target", "fallback": "The selector %1$s does not select any players, do you want to defer until a player matching this selector logs on?", "with": [{"type": "text", "text": "$(Player)", "color": "aqua"}], "color": "yellow"}

$tellraw @s {"type": "translatable", "translate": "paradox.commands.send_to_prison_for_time.defer_button", "fallback": "[Yes, defer until this player logs on]", "color": "green", "clickEvent": {"action": "run_command", "value": "/function paradox:deferred/defer_send_to_prison_for_time {Player: '$(Player)', PlayTime: $(PlayTime), WorldTime: $(WorldTime)}"}, "hoverEvent": {"action": "show_text", "contents": {"type": "translatable", "translate": "paradox.commands.send_to_prison_for_time.defer_button.hover", "fallback": "Click to defer"}}}

return fail
