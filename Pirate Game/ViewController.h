//
//  ViewController.h
//  Pirate Game
//
//  Created by Matthew Linaberry on 9/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *playerHPLabel;
@property (strong, nonatomic) IBOutlet UILabel *PlayerDamageLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerWeaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerArmorLabel;
- (IBAction)leftActionButton:(UIButton *)sender;
- (IBAction)rightActionButton:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
- (IBAction)resetButton:(UIButton *)sender;
- (IBAction)northButton:(UIButton *)sender;
- (IBAction)eastButton:(UIButton *)sender;
- (IBAction)southButton:(UIButton *)sender;
- (IBAction)westButton:(UIButton *)sender;
@end

