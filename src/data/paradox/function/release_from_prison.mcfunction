$execute store result score #entity-count paradox.misc if entity $(Player)

execute if score #entity-count paradox.misc matches 2.. run \
	return run function paradox:message/selector_has_multiple_targets_error

$execute if score #entity-count paradox.misc matches 0 run \
	return run function paradox:deferred/maybe_defer_release_from_prison {Player: "$(Player)"}

$execute as $(Player) run function paradox:internal/release_from_prison