//
//  ViewController.m
//  Pirate Game
//
//  Created by Matthew Linaberry on 9/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.backgroundImage.image = [UIImage imageNamed:@"PirateStart.jpg"];
    _playerLocation = CGPointMake(0,0);
    GameFactory *theGame = [[GameFactory alloc] init];
    [self setGameTiles:[theGame tiles]];
    self.thePlayer = theGame.createPlayer;
    [self updateView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateView
{
    // show the player stats!
    self.playerHPLabel.text = [NSString stringWithFormat:@"%i", (int)self.thePlayer.health];
    self.PlayerDamageLabel.text = [NSString stringWithFormat:@"%i", (int)self.thePlayer.damage];
    self.playerWeaponLabel.text = self.thePlayer.weapon.weaponName;
    self.playerArmorLabel.text = self.thePlayer.armor.armorName;
    
    // test if we could go north from the current position
    if (_playerLocation.y - 1 >= 0)
    {
        _goNorth.hidden = NO;
    }
    else
    {
        _goNorth.hidden = YES;
    }
    // test if we could go east from the current position
    if (_playerLocation.x + 1 >= [_gameTiles count])
    {
        _goEast.hidden = YES;
    }
    else
    {
        _goEast.hidden = NO;
    }
    // test if we could go south from the current position
    NSArray *dummy = [[NSArray alloc] initWithArray:[self.gameTiles objectAtIndex:self.playerLocation.x]];
    if (_playerLocation.y + 1 >= [dummy count])
    {
        _goSouth.hidden = YES;
    }
    else
    {
        _goSouth.hidden = NO;
    }
    
    // test if we could go west from the current position
    if (self.playerLocation.x - 1 >= 0)
    {
        self.goWest.hidden = NO;
    }
    else
    {
        self.goWest.hidden = YES;
    }
    
    // grab a reference to the tile
    MTLTile *currentTile = [[self.gameTiles objectAtIndex:self.playerLocation.x] objectAtIndex:self.playerLocation.y];
    [self.backgroundImage setImage:currentTile.backgroundImage];
    self.storyLabel.text = currentTile.storyMessage;
    
    // refresh action buttons
    if (currentTile.hasAction1)
    {
        self.actionButton1.hidden = NO;
        
    }
    else
    {
    }
}

- (IBAction)leftActionButton:(UIButton *)sender {
}

- (IBAction)rightActionButton:(UIButton *)sender {
}
- (IBAction)resetButton:(UIButton *)sender {
}

- (IBAction)northButton:(UIButton *)sender
{
    self.playerLocation = CGPointMake(self.playerLocation.x, self.playerLocation.y - 1);
    [self updateView];
}

- (IBAction)eastButton:(UIButton *)sender
{
    self.playerLocation = CGPointMake(self.playerLocation.x + 1, self.playerLocation.y);
    [self updateView];
}

- (IBAction)southButton:(UIButton *)sender
{
    self.playerLocation = CGPointMake(self.playerLocation.x, self.playerLocation.y + 1);
    [self updateView];

}

- (IBAction)westButton:(UIButton *)sender
{
    self.playerLocation = CGPointMake(self.playerLocation.x - 1, self.playerLocation.y);
    [self updateView];

}
@end
