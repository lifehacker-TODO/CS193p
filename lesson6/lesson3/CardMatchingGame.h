//
//  CardMatchingGame.h
//  lesson3
//
//  Created by Leiyou Who on 1/23/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

@property (nonatomic,readonly) int score;

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@end
