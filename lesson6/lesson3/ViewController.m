//
//  ViewController.m
//  learnDemo
//
//  Created by Leiyou Who on 1/22/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (nonatomic)int flipCount;
//@property (strong,nonatomic) Deck *deck;
@property (strong,nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UITextField *scoreLabel;

@end

@implementation ViewController

- (CardMatchingGame *)game{
    if (!_game) {
        _game =  [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
         return _game;
}



- (Deck *)createDeck{     //abstract
    return nil;
}



- (IBAction)touchCardButton:(UIButton *)sender {
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void)updateUI{
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];

        Card * card = [self.game cardAtIndex:cardButtonIndex];


        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.matched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score %d", self.game.score];
}

- (NSString *)titleForCard:(Card *)card{
    return card.chosen ? card.content : nil;
}
- (UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed: card.chosen ? @"cardfront":@"cardback"];
}
@end
