//
//  Card.h
//  lesson2
//
//  Created by Leiyou Who on 1/22/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

- (int)match: (NSArray *)otherCards;
@end
