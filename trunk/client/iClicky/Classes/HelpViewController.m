//
//  HelpViewController.m
//  iClicky
//
//  Created by Jesse Chahal on 6/29/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "HelpViewController.h"


@implementation HelpViewController
@synthesize statusText;

- (IBAction)buttonPressed:(id)sender
{
	NSString *title = [sender titleForState:UIControlStateNormal];
	if ([title isEqualToString: @"Tutorial 1"])
	{
		NSString *newText = [[NSString alloc] initWithFormat: @"link to %@ is http://code.google.com/p/pine-apple/wiki/tut1", title];
		statusText.text = newText;
		[newText release];
	}
	else if ([title isEqualToString: @"Tutorial 2"])
	{
		NSString *newText = [[NSString alloc] initWithFormat: @"link to %@ is http://code.google.com/p/pine-apple/wiki/tut2", title];
		statusText.text = newText;
		[newText release];
	}
	else if ([title isEqualToString: @"Tutorial 3"])
	{
		NSString *newText = [[NSString alloc] initWithFormat: @"link to %@ is http://code.google.com/p/pine-apple/wiki/tut3", title];
		statusText.text = newText;
		[newText release];
	}
	else if ([title isEqualToString: @"Tutorial 4"])
	{
		NSString *newText = [[NSString alloc] initWithFormat: @"link to %@ is http://code.google.com/p/pine-apple/wiki/tut4", title];
		statusText.text = newText;
		[newText release];
	}
	else
	{
		NSString *newText = [[NSString alloc] initWithFormat: @"link to %@ is michael3210@live.com.", title];
		statusText.text = newText;
		[newText release];
	}
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation {
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[statusText release];
    [super dealloc];
}


@end
