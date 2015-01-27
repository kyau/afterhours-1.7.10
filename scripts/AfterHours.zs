print("Started loading of AfterHours Tweaks");
# Applied Energistics 2
val grindStone = <appliedenergistics2:tile.BlockGrinder>;
val certusQuartz = <appliedenergistics2:item.ItemMultiMaterial:0>;
# Buildcraft
val goldGear = <BuildCraft|Core:goldGearItem>;
val woodGear = <BuildCraft|Core:woodenGearItem>;
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
recipes.addShaped(quarry,[[<ore:gearSteel>, <Forestry:chipsets:3>, <ore:gearSteel>], [<ore:gearGold>, <ChickenChunks:chickenChunkLoader>, <ore:gearGold>], [<ore:gearDiamond>, <Railcraft:borehead.diamond>, <ore:gearDiamond>]]);

# EnderStorage
recipes.remove(<EnderStorage:enderChest:0>);
recipes.remove(<EnderStorage:enderChest:4096>);
recipes.remove(<EnderStorage:enderPouch>);
recipes.addShaped(<EnderStorage:enderChest:0>, [[<minecraft:blaze_rod>, <ore:blockWool>, <minecraft:blaze_rod>], [<ore:obsidian>, <ThermalExpansion:Strongbox:4>, <ore:obsidian>], [<minecraft:blaze_rod>, <minecraft:ender_pearl>, <minecraft:blaze_rod>]]);
recipes.addShaped(<EnderStorage:enderChest:4096>, [[<minecraft:blaze_rod>, <ore:blockWool>, <minecraft:blaze_rod>], [<ore:obsidian>, <ThermalExpansion:Tank:4>, <ore:obsidian>], [<minecraft:blaze_rod>, <minecraft:ender_pearl>, <minecraft:blaze_rod>]]);
recipes.addShaped(<EnderStorage:enderPouch>, [[<minecraft:blaze_powder>, <minecraft:leather>, <minecraft:blaze_powder>], [<minecraft:leather>, <ore:ingotEnderium>, <minecraft:leather>], [<minecraft:blaze_powder>, <ore:blockWool>, <minecraft:blaze_powder>]]);

# Metallurgy4
recipes.remove(<Metallurgy:machine.frame>);
recipes.remove(<Metallurgy:crusher>);
recipes.remove(<Metallurgy:alloyer>);
recipes.remove(<Metallurgy:forge>);
recipes.removeShapeless(<Metallurgy:base.dust:7>, [<ore:dustIron>, <ore:dustManganese>]);
#mods.tconstruct.Smeltery.removeAlloy(<liquid:steel.molten>);

print("AfterHours Tweaks Loaded");