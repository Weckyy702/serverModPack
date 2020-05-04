print("Changing Recipes...");

//recipes to remove / alter
val simpleMachineChassis = <enderio:item_material:0>;
val machineFrame = <thermalexpansion:frame:0>;
val steelCasing = <mekanism:basicblock:8>;
val blastBricks = <immersiveengineering:stone_decoration:1>;
val NASA_workbench = <galacticraftcore:rocket_workbench>;
val illuminatedPanel = <appliedenergistics2:part:180>;
val draconicCore = <draconicevolution:draconic_core>;

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

val stoneBricks = <ore:bricksStone>;
val brick = <minecraft:brick>;
val searedBrick = <tconstruct:materials:0>;

val electricalSteel = <ore:ingotElectricalSteel>;

val compressedSteel = <ore:compressedSteel>;
val lever = <minecraft:lever>;
val redstone_torch = <minecraft:redstone_torch>;
val craftingTable = <minecraft:crafting_table>;
val eliteControlCircuit = <mekanism:controlcircuit:2>;

val glowstoneDust = <ore:dustGlowstone>;
val redstoneDust = <ore:dustRedstone>;
val ironIngot = <ore:ingotIron>;
val quiteClearGlass = <enderio:block_fused_glass:*>;

val draconiumIngot = <ore:ingotDraconium>;
val goldIngot = <ore:ingotGold>;
val compressedDiamond = <ore:itemCompressedDiamond>;

//disabling unwanted items
recipes.remove(nuclearBomb);
recipes.remove(fireBomb);
recipes.remove(wirelessConnector);

//changing recipes
recipes.remove(simpleMachineChassis);
recipes.addShaped(simpleMachineChassis,
[	[ironBars, steelIngot, ironBars],
	[steelIngot, grainsOfInfinity, steelIngot],
	[ironBars, steelIngot, ironBars]			]);

recipes.remove(machineFrame);
recipes.addShaped(machineFrame, 
[	[electricalSteel, glass, electricalSteel],
	[glass, tinGear, glass],
	[electricalSteel, glass, electricalSteel]		]);
	
recipes.remove(steelCasing);
recipes.addShaped(steelCasing, 
[	[steelIngot, hardenedGlass, steelIngot],
	[hardenedGlass, osmiumIngot, hardenedGlass],
	[steelIngot, hardenedGlass, steelIngot]			]);

recipes.remove(blastBricks);
recipes.addShaped(blastBricks * 3,
[	[searedBrick, brick, searedBrick],
	[brick, stoneBricks, brick],
	[searedBrick, brick, searedBrick]			]);

recipes.remove(NASA_workbench);
recipes.addShaped(NASA_workbench,
[	[compressedSteel, craftingTable, compressedSteel],
	[lever, eliteControlCircuit, lever],
	[compressedSteel, redstone_torch, compressedSteel]	]);

recipes.remove(illuminatedPanel);
recipes.addShaped(illuminatedPanel,
[	[null, glowstoneDust, quiteClearGlass],
	[ironIngot, redstoneDust, quiteClearGlass],
	[null, glowstoneDust, quiteClearGlass]			]);

recipes.remove(draconicCore);
recipes.addShaped(draconicCore,
[	[draconiumIngot, goldIngot, draconiumIngot],
	[goldIngot, compressedDiamond, goldIngot],
	[draconiumIngot, goldIngot, draconiumIngot]			]);

furnace.remove(osmiumIngot);
mods.immersiveengineering.ArcFurnace.removeRecipe(osmiumIngot);

print("Done!");