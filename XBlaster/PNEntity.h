//
//  PNEntity.h
//  XBlaster
//
//  Created by Armando on 19/04/14.
//  Copyright (c) 2014 Armando. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface PNEntity : SKSpriteNode

@property (assign, nonatomic) CGPoint direction;
@property (assign, nonatomic) float health;
@property (assign, nonatomic) float maxHealth;

+(SKTexture *) generateTexture;
-(instancetype) initWithPosition:(CGPoint) position;
-(void) update:(CFTimeInterval) delta;

@end
