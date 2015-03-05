//
//  DropitBehavior.h
//  lesson8
//
//  Created by Leiyou Who on 2/2/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior
- (void)addItem: (id <UIDynamicItem>)item;
- (void)removeItem: (id <UIDynamicItem>)item;
@end
