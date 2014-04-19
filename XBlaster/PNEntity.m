//
//  PNEntity.m
//  XBlaster
//
//  Created by Armando on 19/04/14.
//  Copyright (c) 2014 Armando. All rights reserved.
//

#import "PNEntity.h"

@implementation PNEntity

+(SKTexture *) generateTexture{
    
    static SKTexture *texture = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        SKLabelNode *mainShip = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        mainShip.name = @"mainship";
        mainShip.fontSize = 20.0f;
        mainShip.fontColor = [SKColor whiteColor];
        mainShip.text = @"▲";
        
        SKLabelNode *wings = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        wings.name  = @"wings";
        wings.fontSize = 20.0f;
        wings.text = @"< >";
        wings.fontColor = [SKColor whiteColor];
        wings.position = CGPointMake(0, 7);
        
        wings.zRotation = DegreesToRadians(180);
        
        [mainShip addChild:wings];
        
        SKView *textureView = [SKView new];
        texture = [textureView textureFromNode:mainShip];
        texture.filteringMode = SKTextureFilteringNearest;

    });
    
    return texture;
}

-(instancetype) initWithPosition:(CGPoint) position{
    
    if(self = [super init]){
        self.texture = [[self class] generateTexture];
        self.size = self.texture.size;
        self.position = position;
        
        _direction = CGPointZero;
    }
    
    return self;
}

-(void) update:(CFTimeInterval) delta{
    
}

@end
