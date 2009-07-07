//
//  LoginViewController.m
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "PopupViewController.h"


@implementation LoginViewController
@synthesize classPicker;
@synthesize passwordField;
@synthesize pickerData;
@synthesize server;
@synthesize studentID;
@synthesize dict;
@synthesize array;
@synthesize userData;
@synthesize paths;
@synthesize documentsDirectory;
/* In this method the password entered by the user along with their studentID and the class are sent to the server
 * where attendence will be recorded if the  correct password was entered (A alert will appear confirming the password).
 * If the wrong password is entered the server will do nothing and a alert will be displayed describing the fact it is
 * an incorrect password
 * PRE-server must be up and running and the picker view must have at least 1 option
 * POST- attedence is recorded on the server if correct password is entered 
 */
- (IBAction)submitPressed {
	NSInteger row = [classPicker selectedRowInComponent:0];
	NSString *selected = [pickerData objectAtIndex:row];
	UIAlertView *alert;
	
	NSString *title = [[NSString alloc] initWithFormat: 
					   @"You selected %@!", selected];
	
	NSString *send = [[NSString alloc] initWithFormat:@"%@clientlogin.php?classid=%@&sn=%@&pass=%@", server, @"1", studentID, [passwordField text]];
	
	NSString *result = [NSString stringWithContentsOfURL:[NSURL URLWithString:send]];
	
	if([result isEqualToString:@"OK"]) {
		alert = [[UIAlertView alloc] initWithTitle:title message:@"ATTENDENCE RECORDED" 
										  delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
	}
	
	else {
		alert = [[UIAlertView alloc] initWithTitle:title message:@"INCORRECT PASSWORD" 
										  delegate:nil cancelButtonTitle:@"Try Again" otherButtonTitles:nil];
	}
	
	[alert show];
	[alert release]; 
	[title release];
	[send release];
}
/* This method retrieves data off of the server (running on a laptop since the sfu one never worked)
 * it then uses the data to populate the picker view and writes the data to a file (file is not used for anything in V1)
 * and finally this method is where the PopupView is loaded as a modal view to ask the user for their information
 * (currently the user information is not store or needed but will be in V2)
 * PRE-server must be up and running 
 * POST- picker view is populated 
 */
- (void)viewDidLoad {
	NSMutableArray *classes;
	NSMutableArray *serverID;
	NSString *classlist;
	NSString *send;
	NSString *class;
	server = [[NSString alloc] initWithFormat:@"http://142.58.198.112/iclicky/"];
	classlist = [[NSString alloc] initWithFormat:@"%@getclasslist.php?sn=", server];
	studentID = [[NSString alloc] initWithFormat:@"123456789"];
	send = [classlist stringByAppendingString:studentID];
	class = [NSString stringWithContentsOfURL:[NSURL URLWithString:send]];
    array = [class componentsSeparatedByString:@","];
	
	classes = [[NSMutableArray alloc] initWithCapacity:([array count] /2)];
	serverID = [[NSMutableArray alloc] initWithCapacity:([array count] /2)];
	
	if([array count] > 2) {
		for(int i = 0; i < [array count] - 1; i = i + 2) { //used if 2 or more class are in the list
			[serverID addObject:[array objectAtIndex:i]];
			[classes addObject:[array objectAtIndex:i+1]];
		}
		self.pickerData = classes;
	}
	else {			//used if only 1 class is listed
		[serverID addObject:[array objectAtIndex:0]];
		[classes addObject:[array objectAtIndex:1]];
		array = [NSArray arrayWithArray:classes];
		self.pickerData = array;
	}
	dict = [NSDictionary dictionaryWithObjects:classes forKeys:serverID]; //saves the data from the server	 

	
	NSString *plistName = [[NSString alloc] initWithFormat:@"classList"];
	paths = NSSearchPathForDirectoriesInDomains(
			NSDocumentDirectory, NSUserDomainMask, YES);
	documentsDirectory = [paths objectAtIndex:0];
	NSString *myPlistPath = [documentsDirectory stringByAppendingPathComponent: 
					[NSString stringWithFormat: @"%@.plist", plistName]];
	[myPlistPath retain];
	[dict writeToFile:myPlistPath atomically:YES]; //writes the data from the server to the documents/classlist.plist
	
	/*NSFileManager *fileManger = [NSFileManager defaultManager];
	if ( ![fileManger fileExistsAtPath:myPlistPath] ) {
		userData = [[PopupViewController alloc] initWithNibName:@"PopupView" bundle:nil];
		[self.view addSubview:userData.view atIndex:0];
	}*/
	
	if(YES) {	//hardcoded view controller to pop up. In V2 this if statment will be dependent 
		[self showPopup]; //on if user data is already saved in memory or not
		
	}
	
	[serverID release];
	[classes release];
	[classlist release];
	[send release];
	[class release];
	
	 [myPlistPath release];
	 //[fileManger release];
} 
- (void)showPopup {
	PopupViewController *modalViewController = [[PopupViewController alloc] init];
	modalViewController.view = modalView;
	[self presentModalViewController:modalViewController animated:YES];
}
- (IBAction)hide:(id)sender {
	[[self modalViewController] dismissModalViewControllerAnimated:YES];
}
- (IBAction)doneEditing:(id)sender {
	[sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[documentsDirectory release];
	[paths release];
	[classPicker release];
	[pickerData release];
	[server release];
	[studentID release];
    [super dealloc];
}
//code below is for the picker view. It needs follow certain protocals and needs certain methods delagated to this class
#pragma mark - 
#pragma mark Picker Data Source Methods 
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView 
{ 
    return 1; 
} 
- (NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component 
{ 
    return [pickerData count]; 
} 
#pragma mark Picker Delegate Methods 
- (NSString *)pickerView:(UIPickerView *)pickerView 
			 titleForRow:(NSInteger)row 
			forComponent:(NSInteger)component 
{ 
    return [pickerData objectAtIndex:row]; 
}

@end
