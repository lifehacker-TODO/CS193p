//
//  PlayingCardView.h
//  lesson7
//
//  Created by Leiyou Who on 1/29/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong,nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end
