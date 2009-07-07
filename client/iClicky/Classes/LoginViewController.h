//
//  LoginViewController.h
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PopupViewController;

@interface LoginViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	IBOutlet	UIPickerView *classPicker; //outlet for the displayed picker
	IBOutlet	UITextField *passwordField;
	IBOutlet	UIView *modalView; //a view used to display the PopupView.xib
	NSArray		*pickerData; //represents the data that is displayed on the picker view
	NSArray		*array; //used to split the string recieved from the server
	NSString	*server; //stores the server address
	NSString	*studentID; //hardcodes the studentID into the application, V2 will remove hardcode
	NSDictionary *dict; //used to store the data from the server by spliting the course from its serverID
	NSArray *paths; //used to find documents directectory to save files
	NSString *documentsDirectory; //used to represent a file in the documents folder
	PopupViewController *userData; 
}
@property (nonatomic, retain) UIPickerView *classPicker;
@property (nonatomic, retain) UITextField *passwordField;
@property (nonatomic, retain) UIView *modalView; 
@property (nonatomic, retain) NSArray *pickerData;
@property (nonatomic, retain) NSArray *array;
@property (nonatomic, retain) NSString *server;
@property (nonatomic, retain) NSString *studentID;
@property (nonatomic, retain) NSDictionary *dict;
@property (nonatomic, retain) NSArray *paths;
@property (nonatomic, retain) NSString *documentsDirectory;
@property (nonatomic, retain) PopupViewController *userData;
- (IBAction)submitPressed;
- (void)showPopup;
- (IBAction)hide:(id)sender;
- (IBAction)doneEditing: (id)sender;

@end
