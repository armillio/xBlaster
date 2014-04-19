//
//  PNBullet.m
//  XBlaster
//
//  Created by Armando on 19/04/14.
//  Copyright (c) 2014 Armando. All rights reserved.
//

#import "PNBullet.h"

@implementation PNBullet

-(instancetype) initWithPosition:(CGPoint) position{
    
    if(self = [super initWithPosition:position]){
        self.name = @"bullet";
    }
    return self;
}

+(SKTexture *) generateTexture{
    
    static SKTexture *texture = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        SKLabelNode *bullet = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        bullet.name = @"bullet";
        bullet.fontSize = 15.0;
        bullet.fontColor = [SKColor greenColor];
        bullet.text = @"⌂";
        bullet.position = CGPointMake(0, 7);
                
        SKView *textureView = [SKView new];
        texture = [textureView textureFromNode:bullet];
        texture.filteringMode = SKTextureFilteringNearest;
        
    });
    
    return texture;
}
@end
