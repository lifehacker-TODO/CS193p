//
//  PlayingCard.m
//  lesson2
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
- (NSString *)content{
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

@synthesize suit = _suit;
- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    } }
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}
@end
