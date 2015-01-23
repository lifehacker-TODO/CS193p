//
//  PlayCardDeck.m
//  lesson2
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "PlayCardDeck.h"
#import "PlayingCard.h"

@implementation PlayCardDeck
- (instancetype)init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits] ) {
            for (NSInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card =[[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                card.content = [NSString stringWithFormat:@"%lu %@",rank,suit];
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
