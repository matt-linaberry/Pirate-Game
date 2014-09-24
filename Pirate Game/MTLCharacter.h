//
//  MTLCharacter.h
//  Pirate Game
//
//  Created by Matthew Linaberry on 9/24/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLArmor.h"
#import "MTLWeapon.h"
@interface MTLCharacter : NSObject
@property (nonatomic) NSInteger health;
@property (nonatomic) NSInteger damage;
@property (nonatomic, strong) MTLArmor *armor;
@property (nonatomic, strong) MTLWeapon *weapon;
@end
