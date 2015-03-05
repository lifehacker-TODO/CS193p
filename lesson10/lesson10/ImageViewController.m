//
//  ImageViewController.m
//  lesson10
//
//  Created by Leiyou Who on 3/5/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImage *image;
@end


@implementation ImageViewController
- (void)setImageURL:(NSURL *)imageURL
{
    _imageURL = imageURL;
    self.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.imageURL]];
}


- (UIImageView *)imageView
{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

- (UIImage *)image
{
    return self.imageView.image;
}
- (void)setImage:(UIImage *)image
{
    self.imageView.image = image;
    [self.imageView sizeToFit];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
}











@end
