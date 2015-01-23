//
//  CardMatchingGame.m
//  lesson3
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic,readwrite) int score;
@property (strong,nonatomic) NSMutableArray *cards;
@end



@implementation CardMatchingGame

- (NSMutableArray *)cards{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}


-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    if (self = [super init]) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
//                self.cards[i] = card;
                [self.cards addObject:card];
            }else{
                self = nil;
                break;
            }
        }
    }
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index{

    return (index < [self.cards count]) ? self.cards[index] : nil;
//    return self.cards[index];
}

static const int MATCH_BOUNS = 4;
static const int COST_TO_CHOOSE = 1;
static const int MISMATCH_PENALTY = 2;

- (void)chooseCardAtIndex:(NSUInteger)index{
    Card *card = [self cardAtIndex:index];
    
    if (!card.matched) {
        if (card.chosen) {
            card.chosen = NO;
        }
        else{
            for (Card *othercard in self.cards) {
                if (othercard.chosen && !othercard.matched) {
                    int matchScore = [card match:@[othercard]];
                    
                    if (matchScore) {
                        self.score = matchScore * MATCH_BOUNS;
                        othercard.matched = YES;
                        card.matched = YES;
                        
                        
                    } else {
                        self.score -= MISMATCH_PENALTY;
                        othercard.chosen = NO;
                    }
                    break;
                }
                
            }
            card.chosen = YES;
            self.score -= COST_TO_CHOOSE;
        }
    }
}
@end
