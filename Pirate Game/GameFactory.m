//
//  GameFactory.m
//  Pirate Game
//
//  Created by Matthew Linaberry on 9/26/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "GameFactory.h"

@implementation GameFactory

- (NSArray *) tiles
{

    // column 1
    MTLTile *startTile = [[MTLTile alloc] init];
    startTile.storyMessage = @"Welcome to the Pirate Game!";
    startTile.hasAction1 = YES;
    startTile.actionButton1 = @"Carry on.";
    startTile.hasAction2 = NO;
    startTile.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    
    MTLTile *attackTile = [[MTLTile alloc] init];
    attackTile.storyMessage = @"Ha ha ha.  It's an attack!";
    attackTile.hasAction1 = NO;
    attackTile.hasAction2 = NO;
    attackTile.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    
    MTLTile *blacksmithTile = [[MTLTile alloc] init];
    blacksmithTile.storyMessage = @"Argh a blacksmith to make something!";
    blacksmithTile.hasAction1 = NO;
    blacksmithTile.hasAction2 = NO;
    blacksmithTile.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    
    // column 2
    MTLTile *parrotTile = [[MTLTile alloc] init];
    parrotTile.storyMessage = @"BRACK!  Parrot time.";
    parrotTile.hasAction1 = NO;
    parrotTile.hasAction2 = NO;
    parrotTile.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    
    MTLTile *plankTile = [[MTLTile alloc] init];
    plankTile.storyMessage = @"Plank is right there.  Walk it!";
    plankTile.hasAction1 = NO;
    plankTile.hasAction2 = NO;
    plankTile.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    
    MTLTile *shipBattleTile = [[MTLTile alloc] init];
    shipBattleTile.storyMessage = @"Battle it up!";
    shipBattleTile.hasAction1 = NO;
    shipBattleTile.hasAction2 = NO;
    shipBattleTile.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    
    // column 3
    MTLTile *treasureTile = [[MTLTile alloc] init];
    treasureTile.storyMessage = @"Oooooh treasure!.";
    treasureTile.hasAction1 = NO;
    treasureTile.hasAction2 = NO;
    treasureTile.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    
    MTLTile *treasure2Tile = [[MTLTile alloc] init];
    treasure2Tile.storyMessage = @"Oooooh more treasure!.";
    treasure2Tile.hasAction1 = NO;
    treasure2Tile.hasAction2 = NO;
    treasure2Tile.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    
    MTLTile *weaponsTile = [[MTLTile alloc] init];
    weaponsTile.storyMessage = @"ouch a sharp sword!";
    weaponsTile.hasAction1 = NO;
    weaponsTile.hasAction2 = NO;
    weaponsTile.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    
    //column 4
    MTLTile *dockTile = [[MTLTile alloc] init];
    dockTile.storyMessage = @"You're in a safe haven!";
    dockTile.hasAction1 = NO;
    dockTile.hasAction2 = NO;
    dockTile.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    
    MTLTile *octopusTile = [[MTLTile alloc] init];
    octopusTile.storyMessage = @"Oh no it's your friendly 8 legged monster!";
    octopusTile.hasAction1 = NO;
    octopusTile.hasAction2 = NO;
    octopusTile.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    
    MTLTile *bossTile = [[MTLTile alloc] init];
    bossTile.storyMessage = @"LOL it's the boss!";
    bossTile.hasAction1 = NO;
    bossTile.hasAction2 = NO;
    bossTile.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    
    
    // initialize all of our arrays
    NSArray *column1Array = [[NSArray alloc] initWithObjects:startTile, attackTile, blacksmithTile, nil];
    NSArray *column2Array = [[NSArray alloc] initWithObjects:octopusTile, parrotTile, treasure2Tile, nil];
    NSArray *column3Array = [[NSArray alloc] initWithObjects:treasureTile, plankTile, weaponsTile, nil];
    NSArray *column4Array = [[NSArray alloc] initWithObjects:dockTile, shipBattleTile, bossTile, nil];
    NSArray *tilesArray = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, column4Array, nil];
    return tilesArray;
}

- (MTLCharacter *) createPlayer
{
    MTLCharacter *aPlayer = [[MTLCharacter alloc] init];
    aPlayer.health = 10;
    aPlayer.damage = 1;
    MTLWeapon *fists = [[MTLWeapon alloc] init];
    fists.damageValue = 1;
    fists.weaponName = @"Bare Fists";
    aPlayer.weapon = fists;
    
    MTLArmor *cottonShirt = [[MTLArmor alloc] init];
    cottonShirt.armorValue = 1;
    cottonShirt.armorName = @"Cotton Shirt";
    aPlayer.armor = cottonShirt;
    return aPlayer;
}
@end
