//
//  Deck.m
//  lesson2
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "Deck.h"
#import "Card.h"
@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

//cards的setter方法
- (NSMutableArray *)cards{
    if (!_cards) {
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

//在一副牌的顶部加入一张牌
- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

//在一副牌的底部加入一张牌
- (void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}

//随机抽取一张牌
- (Card *)drawRandomCard
{
    Card * randomCard = nil;
    if ([self.cards count]) {
        int index = arc4random() % [self.cards count];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end
