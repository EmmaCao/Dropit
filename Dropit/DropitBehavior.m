//
//  DropitBehavior.m
//  Dropit
//
//  Created by Emma on 2018/10/27.
//  Copyright © 2018 Emma. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()
@property (strong, nonatomic) UIGravityBehavior *gravity;
@property (strong, nonatomic) UICollisionBehavior *collider;
@end

@implementation DropitBehavior

-(instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    return self;
}

-(void)addItem:(id<UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

-(void)removeItem:(id<UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}

-(UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

-(UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

@end
