//
//  HelpViewController.h
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HelpViewController : UIViewController {
	IBOutlet	UILabel		*statusText;
}
@property (retain, nonatomic) UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;

@end
