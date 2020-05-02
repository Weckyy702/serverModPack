print("Changing Recipes...");

//recipes to remove / alter
val simpleMachineChassis = <enderio:item_material:0>;
val machineFrame = <thermalexpansion:frame:0>;
val steelCasing = <mekanism:basicblock:8>;
val nuclearBomb = <extraplanets:nuclear_bomb>;
val fireBomb = <extraplanets:fire_bomb>;
val wirelessConnector = <ae2stuff:wireless>;

//ingridients
val ironBars = <ore:barsIron>;
val grainsOfInfinity = <ore:dustBedrock>;
val steelIngot = <ore:ingotSteel>;

val glass = <ore:blockGlass>;
val tinGear = <ore:gearTin>;

val hardenedGlass = <thermalfoundation:glass_alloy:*>;
val osmiumIngot = <mekanism:ingot:1>;

//disabling unwanted items
recipes.remove(nuclearBomb);
recipes.remove(fireBomb);
recipes.remove(wirelessConnector);

//changing recipes
recipes.remove(simpleMachineChassis);
recipes.addShaped(simpleMachineChassis,
[	[ironBars, steelIngot, ironBars],
	[steelIngot, grainsOfInfinity, steelIngot],
	[ironBars, steelIngot, ironBars]	]);

recipes.remove(machineFrame);
recipes.addShaped(machineFrame, 
[	[steelIngot, glass, steelIngot],
	[glass, tinGear, glass],
	[steelIngot, glass, steelIngot]		]);

recipes.remove(steelCasing);
recipes.addShaped(steelCasing, 
[	[steelIngot, hardenedGlass, steelIngot],
	[hardenedGlass, osmiumIngot, hardenedGlass],
	[steelIngot, hardenedGlass, steelIngot]	]);

furnace.remove(osmiumIngot);
mods.immersiveengineering.ArcFurnace.removeRecipe(osmiumIngot);

print("Done!");