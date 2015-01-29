//
//  Card.m
//  lesson2
//
//  Created by Leiyou Who on 1/22/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "Card.h"

@implementation Card
- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    return score;
}
@end
