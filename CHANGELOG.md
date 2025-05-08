# Changelog
<!-- 
	==== ADDING TO THE CHANGELOG ====
	When adding to the changelog, put the new version in a header above the previous versions
	For example, adding version 3.0.1:
		Old changelog would look like:

			## Paradox 3.0.0
			<v2.X.X -> v.3.0.0 changelog here>

			...

		New changelog would look like:

			## Paradox 3.0.1
			<v3.0.0 -> v3.0.1 changelog here>

			## Paradox 3.0.0
			<v2.X.X -> v3.0.0 changelog here>

			...
-->

## Paradox 3.0.0
* Updated pack.mcmeta
* "france:general/" powers are now applied by a global power set
* Created "france:dimension/" powers
	* Applied by a global power set
	* Only apply in the dimension
* Renamed the following powers
	* france:prisoner/burnt -> france:dimension/no_lava_movement
	* france:prisoner/deepslated -> france:dimension/hidden_deepslate_ores
	* france:prisoner/stoned -> france:dimension/hidden_stone_ores
	* france:prisoner/fall -> france:dimension/increased_fall_damage
	* france:prisoner/gravity -> france:dimension/increased gravity
	* france:prisoner/healing -> france:dimension/reduced_healing
	* france:prisoner/p -> france:dimension/no_portal_use
	* france:prisoner/walk -> france:dimension/reduced_sprinting
	* france:prisoner/sleep -> france:dimension/no_sleep
	* france:prisoner/penguin -> france:dimension/no_elytra
* Deleted the following powers:
	* "france:prisoner/spawn"
* Changed the following powers:
	* france:prisoner/atp - now calls "function paradox:teleport_to_prison"
	* france:prisoner/die - now calls "function paradox:teleport_to_prison", changed name and description
	* france:prisoner/gtfbipb - now calls "function paradox:teleport_to_prison"
	* france:prisoner/deepslated (now france:dimension/hidden_deepslate_ores) - improved block checking
	* france:prisoner/stoned (now france:dimension/hidden_stone_ores) - improved block checking
	* france:prisoner/sleep (now france:dimension/no_sleep) - changed message