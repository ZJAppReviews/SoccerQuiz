//
//  ViewController.h
//  Project3
//
//  Created by Daniel Hickey on 18/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import <UIKit/UIKit.h>

int highScoreNumber;

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *AnimatedBackground;
    IBOutlet UILabel *highScore;
}

- (IBAction)twitterPost:(id)sender;

@end
