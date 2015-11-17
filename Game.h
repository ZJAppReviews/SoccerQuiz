//
//  Game.h
//  Project3
//
//  Created by Daniel Hickey on 19/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import <UIKit/UIKit.h>

int categoryLoaded;
int questionSelected;

BOOL answer1Correct;
BOOL answer2Correct;
BOOL answer3Correct;
BOOL answer4Correct;

int scoreNumb;
int highScore;
//int addToScore;
int livesNumb;
BOOL gameRunning;

@interface Game : UIViewController
{
    IBOutlet UILabel *categorySelected;
    IBOutlet UILabel *questionText;
    IBOutlet UIButton *answer1;
    IBOutlet UIButton *answer2;
    IBOutlet UIButton *answer3;
    IBOutlet UIButton *answer4;
    
    IBOutlet UIButton *nextCategory;
    IBOutlet UIButton *exit;
    IBOutlet UILabel *newHighScore;
    IBOutlet UILabel *score;
    IBOutlet UILabel *lives;
    
    IBOutlet UIImageView *result;
}

- (IBAction)answer1:(id)sender;
- (IBAction)answer2:(id)sender;
- (IBAction)answer3:(id)sender;
- (IBAction)answer4:(id)sender;
- (void) category1;
- (void) category2;
- (void) category3;
- (void) category4;
- (void) category5;
- (void) category6;

- (void) correctAnswer;
- (void) incorrectAnswer;
 
@end
