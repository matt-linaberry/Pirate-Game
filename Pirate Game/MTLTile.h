//
//  MTLTile.h
//  Pirate Game
//
//  Created by Matthew Linaberry on 9/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MTLWeapon.h"
#import "MTLArmor.h"
@interface MTLTile : NSObject
@property (strong, nonatomic) NSString *storyMessage;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (nonatomic) BOOL hasAction1;
@property (nonatomic) BOOL hasAction2;
@property (strong, nonatomic) NSString *actionButton1;
@property (strong, nonatomic) NSString *actionButton2;
@property (strong, nonatomic) MTLWeapon *aWeapon;
@property (strong, nonatomic) MTLArmor *anArmor;
@end
