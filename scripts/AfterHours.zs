print("Started loading of AfterHours Tweaks");
# Applied Energistics 2
val grindStone = <appliedenergistics2:tile.BlockGrinder>;
val certusQuartz = <appliedenergistics2:item.ItemMultiMaterial:0>;
# Buildcraft
val goldGear = <BuildCraft|Core:goldGearItem>;
val woodGear = <BuildCraft|Core:woodenGearItem>;
# IndustrialCraft2
val nuke = <IC2:blockNuke>;
# Vanilla
val cobblestone = <minecraft:cobblestone>;
val stone = <minecraft:stone>;

# Vanilla
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>,[[<ore:ingotSteel>, null, <ore:ingotSteel>], [null, <ore:ingotSteel>, null], [null, null, null]]);

# Ore Dictionary
val ore_plateIron = <ore:plateIron>;
val ore_plateSteel = <ore:plateSteel>;
val ore_plateTin = <ore:plateTin>;
val ore_plateCopper = <ore:plateCopper>;
val ore_gearSteel = <ore:gearSteel>;
ore_plateIron.add(<Railcraft:part.plate:0>);
ore_plateSteel.add(<Railcraft:part.plate:1>);
ore_plateTin.add(<Railcraft:part.plate:2>);
ore_plateCopper.add(<Railcraft:part.plate:3>);
ore_gearSteel.add(<Railcraft:part.gear:2>);

# Applied Energistics
# - Modified: Grind Stone
recipes.remove(grindStone);
recipes.addShaped(grindStone,[[stone, woodGear, stone], [certusQuartz, goldGear, certusQuartz], [cobblestone, certusQuartz, cobblestone]]);

# BuildCraft
val quarry = <BuildCraft|Factory:machineBlock>;
recipes.remove(quarry);
recipes.addShaped(quarry,[[<ore:gearSteel>, <IC2:itemPartCircuitAdv>, <ore:gearSteel>], [<ore:gearGold>, <ChickenChunks:chickenChunkLoader>, <ore:gearGold>], [<ore:gearDiamond>, <IC2:itemToolDDrill>, <ore:gearDiamond>]]);

# EnderStorage
recipes.remove(<EnderStorage:enderChest:0>);
recipes.remove(<EnderStorage:enderChest:4096>);
recipes.remove(<EnderStorage:enderPouch>);
recipes.addShaped(<EnderStorage:enderChest:0>, [[<minecraft:blaze_rod>, <ore:blockWool>, <minecraft:blaze_rod>], [<ore:obsidian>, <ThermalExpansion:Strongbox:4>, <ore:obsidian>], [<minecraft:blaze_rod>, <minecraft:ender_pearl>, <minecraft:blaze_rod>]]);
recipes.addShaped(<EnderStorage:enderChest:4096>, [[<minecraft:blaze_rod>, <ore:blockWool>, <minecraft:blaze_rod>], [<ore:obsidian>, <ThermalExpansion:Tank:4>, <ore:obsidian>], [<minecraft:blaze_rod>, <minecraft:ender_pearl>, <minecraft:blaze_rod>]]);
recipes.addShaped(<EnderStorage:enderPouch>, [[<minecraft:blaze_powder>, <minecraft:leather>, <minecraft:blaze_powder>], [<minecraft:leather>, <ore:ingotEnderium>, <minecraft:leather>], [<minecraft:blaze_powder>, <ore:blockWool>, <minecraft:blaze_powder>]]);

# Industrialcraft2
recipes.remove(<IC2:blockNuke>);
recipes.remove(<IC2:blockMachine>);
recipes.remove(<IC2:itemToolChainsaw>);
recipes.remove(<IC2:itemToolDDrill>);
recipes.remove(<IC2:itemToolHoe>);
recipes.remove(<IC2:itemTreetapElectric>);
recipes.remove(<IC2:itemToolWrenchElectric>);
recipes.remove(<IC2:blockMachine:3>);
recipes.remove(<IC2:itemToolDrill>);
recipes.addShaped(<IC2:blockMachine>, [[<ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>], [<ore:plateIron>, null, <ore:plateIron>], [<ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>]]);
recipes.addShaped(<IC2:itemToolChainsaw>, [[null, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateIron>, <ore:plateSteel>, <ore:plateSteel>], [<IC2:itemRecipePart:2>, <ore:plateIron>, null]]);
recipes.addShaped(<IC2:itemToolDDrill>, [[null, <ore:gemDiamond>, null], [<ore:gemDiamond>, <IC2:itemTurningBlanks:1>, <ore:gemDiamond>], [<ore:plateSteel>, <IC2:itemToolDrill>, <ore:plateSteel>]]);
recipes.addShaped(<IC2:itemToolHoe>, [[<ore:plateSteel>, <ore:plateSteel>, null], [null, <ore:plateSteel>, null], [null, <IC2:itemRecipePart:3>, null]]);
recipes.addShaped(<IC2:itemTreetapElectric>, [[<IC2:itemTreetap>, null, null], [null, <ore:plateSteel>, null], [null, null, <IC2:itemRecipePart:3>]]);
recipes.addShaped(<IC2:itemToolWrenchElectric>, [[<IC2:itemToolWrench>, null, null], [null, <ore:plateSteel>, null], [null, null, <IC2:itemRecipePart:3>]]);
recipes.addShaped(<IC2:blockMachine:3>, [[<minecraft:flint>, <ore:gemDiamond>, <minecraft:flint>], [<ore:gemDiamond>, <IC2:blockMachine>, <ore:gemDiamond>], [<minecraft:flint>, <IC2:itemPartCircuitAdv>, <minecraft:flint>]]);
recipes.addShaped(<IC2:itemToolDrill>, [[null, <ore:plateIron>, null], [<ore:plateSteel>, <ore:plateIron>, <ore:plateSteel>], [<ore:plateSteel>, <IC2:itemRecipePart:2>, <ore:plateSteel>]]);

# Metallurgy4
recipes.remove(<Metallurgy:machine.frame>);
recipes.remove(<Metallurgy:crusher>);
recipes.remove(<Metallurgy:alloyer>);
recipes.remove(<Metallurgy:forge>);

# MineFactory Reloaded
furnace.remove(<*>, <MineFactoryReloaded:rubber.raw>);
furnace.setFuel(<MineFactoryReloaded:rubber.raw>, 0);

print("AfterHours Tweaks Loaded");