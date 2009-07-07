//
//  PopupViewController.h
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class iClickyAppDelegate;

@interface PopupViewController : UIViewController {
	IBOutlet UITextField *studentID; //textbox outlets
	IBOutlet UITextField *firstName;
	IBOutlet UITextField *lastName;
	IBOutlet UITextField *email;
}
@property (nonatomic, retain) UITextField *studentID;
@property (nonatomic, retain) UITextField *firstName;
@property (nonatomic, retain) UITextField *lastName;
@property (nonatomic, retain) UITextField *email;

- (IBAction)submitPressed; //to be implemented in V2 also known as assignment 4
- (IBAction)doneEditing: (id)sender; //used for the textfield done buttons to give up first responder
@end
