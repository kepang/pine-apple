//
//  iClickyAppDelegate.m
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "iClickyAppDelegate.h"
#import "PopupViewController.h"

@implementation iClickyAppDelegate
//@synthesize userData;
@synthesize window;
@synthesize rootController;

- (id)appPlistFromFile:(NSString *)plistName { //reading a plist from the programs document folder
    NSData *retData;							//currently not fully implemented or used but in V2 will be needed
    NSString *error;
    id retPlist;
    NSPropertyListFormat format;
	
    retData = [self applicationDataFromFile:plistName];
    if (!retData) {
        NSLog(@"Data file not returned.");
		[retData release];
		[error	release];
        return nil;
    }
    retPlist = [NSPropertyListSerialization propertyListFromData:retData  mutabilityOption:NSPropertyListImmutable format:&format errorDescription:&error];
    if (!retPlist){
        NSLog(@"Plist not returned, error: %@", error);
    }
	[retData release];
	[error	release];
    return retPlist;
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    // Override point for customization after application launch
		
	//userData = [[PopupViewController alloc] initWithNibName:@"PopupView" bundle:nil];
	//[window addSubview:userData.view];
	[window addSubview:rootController.view];
	
	
	[window makeKeyAndVisible];
	//code below is older version a modal view but is now in LoginViewController
	//code kept incase in V2 need to move the method back to the AppDelegate
	
//	PopupViewController *popupController = [[PopupViewController alloc] initWithNibName:@"PopupView" bundle:nil];
	
	//UINavigationController *userInfo = [[UINavigationController alloc] initWithRootViewController:rootController];
	//userInfo.viewControllers = [NSArray arrayWithObjects:popupController,nil];
	//if(YES) {
	//	[self showPopup];
	//}
	//[popupController release];
	//[userInfo release];
}

- (void)dealloc {
	//[userData release];
	[rootController release];
    [window release];
    [super dealloc];
}

@end
