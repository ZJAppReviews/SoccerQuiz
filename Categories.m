//
//  Categories.m
//  Project3
//
//  Created by Daniel Hickey on 18/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import "Categories.h"

@interface Categories ()

@end

@implementation Categories

- (IBAction)Button1:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:category1numbSelected forKey:@"CategorySaved"]; // taking the integer called category1numSelected and saving it as CategorySaved. 
    
}
- (IBAction)Button2:(id)sender{
     [[NSUserDefaults standardUserDefaults] setInteger:category2numbSelected forKey:@"CategorySaved"]; // taking the integer called category2numSelected and saving it as CategroySaved.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    category1Number = arc4random() %3; // random number generator with 3 possible values 0, 1 or 2.
    category2Number = arc4random() %3;
    switch (category1Number) {
        case 0:
            [category1 setTitle:@"Premier League" forState:UIControlStateNormal];
            category1numbSelected = 1;
            break;
        case 1:
            [category1 setTitle:@"Fifa World Cup" forState:UIControlStateNormal];
            category1numbSelected = 2;
            break;
        case 2:
            [category1 setTitle:@"Serie A" forState:UIControlStateNormal];
            category1numbSelected = 3;
            break;
        default:
            break;
    }

    switch (category2Number) {
        case 0:
            [category2 setTitle:@"La Liga" forState:UIControlStateNormal];
            category2numbSelected = 4;
            break;
        case 1:
            [category2 setTitle:@"European Cup/Champions League" forState:UIControlStateNormal];
            category2numbSelected = 5;
            break;
        case 2:
            [category2 setTitle:@"Copa America" forState:UIControlStateNormal];
            category2numbSelected = 6;
            break;            
        default:
            break;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
