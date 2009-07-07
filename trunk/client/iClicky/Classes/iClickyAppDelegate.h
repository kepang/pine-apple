//
//  iClickyAppDelegate.h
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PopupViewController;
@interface iClickyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UITabBarController *rootController;
	//PopupViewController *userData;		//not necessary for V1 but V2 might require this instance
	

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITabBarController *rootController;
//@property (nonatomic, retain) PopupViewController *userData;


- (id)appPlistFromFile:(NSString *)plistName;

@end

