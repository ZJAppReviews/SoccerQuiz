//
//  ViewController.m
//  Project3
//
//  Created by Daniel Hickey on 18/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    highScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    highScore.text = [NSString stringWithFormat:@"High Score: %i", highScoreNumber];
    
    AnimatedBackground.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"footballer1.png"],
                                          [UIImage imageNamed:@"footballer2.png"],
                                          [UIImage imageNamed:@"footballer3.png"],
                                          [UIImage imageNamed:@"footballer4.png"],
                                          [UIImage imageNamed:@"footballer6.png"],
                                          nil];
    
    [AnimatedBackground setAnimationRepeatCount:0]; //zero makes it loop endlessly 
    AnimatedBackground.animationDuration = 8; // 8 seconds to cycle through the 5 images
    [AnimatedBackground startAnimating]; // start the animation
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterPost:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *tweet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweet setInitialText:[NSString stringWithFormat:@"My new Highscore is: %i", highScoreNumber ]];
        [self presentViewController:tweet animated:YES completion:nil];
    }
}
@end
