//
//  ViewController.m
//  learnDemo
//
//  Created by Leiyou Who on 1/22/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayCardDeck.h"
//#import "PlayingCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *flipsLabel;
@property (nonatomic)int flipCount;
@property (strong,nonatomic) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck{
    if (!_deck) {
        _deck = [self createDeck];
    }
    return _deck;
}

- (Deck *)createDeck{
    return [[PlayCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:  %d",flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else {
         Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:/*@"A♣︎"*/card.content forState:UIControlStateNormal];
        }
        self.flipCount++;
    }
    
}


@end
