//
//  PlayingCardViewController.m
//  lesson3
//
//  Created by Leiyou Who on 1/28/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "PlayingCardViewController.h"
#import "PlayCardDeck.h"
@interface PlayingCardViewController ()

@end

@implementation PlayingCardViewController

- (Deck *)createDeck{
    return [[PlayCardDeck alloc]init];
}
@end
