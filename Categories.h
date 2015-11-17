//
//  Categories.h
//  Project3
//
//  Created by Daniel Hickey on 18/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import <UIKit/UIKit.h>
int category1Number;
int category2Number;
int category1numbSelected;
int category2numbSelected;

@interface Categories : UIViewController

{
    
    IBOutlet UIButton *category1;
    IBOutlet UIButton *category2;
    
}
- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;

@end
