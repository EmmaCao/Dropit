//
//  DropitBehavior.h
//  Dropit
//
//  Created by Emma on 2018/10/27.
//  Copyright © 2018 Emma. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DropitBehavior : UIDynamicBehavior

-(void)addItem:(id <UIDynamicItem>)item;
-(void)removeItem:(id <UIDynamicItem>)item;

@end

NS_ASSUME_NONNULL_END
