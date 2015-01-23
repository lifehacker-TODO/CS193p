//
//  PlayingCard.h
//  lesson2
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

//允许的花色
+ (NSArray *)validSuits;

+ (NSArray *)rankStrings;

+ (NSUInteger)maxRank;
@end
