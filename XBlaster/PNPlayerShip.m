//
//  PNPlayerShip.m
//  XBlaster
//
//  Created by Armando on 19/04/14.
//  Copyright (c) 2014 Armando. All rights reserved.
//

#import "PNPlayerShip.h"

@implementation PNPlayerShip

-(instancetype) initWithPosition:(CGPoint) position{
    
    if(self = [super initWithPosition:position]){
        self.name = @"shipSprite";
    }
    return self;
}

@end
