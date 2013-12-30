//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Abhishek Fatehpuria on 6/25/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController


// Sets which operation the user is doing.
-(IBAction)operation:(UIButton *)sender;
{
	NSString *oper = sender.currentTitle;
	
	if (autoReset) {
		autoReset = NO;
	}
	
	
	if ([oper isEqualToString:@"+"])
	{
		operation = Plus;
	}
	else if ([oper isEqualToString:@"-"])
	{
		operation = Minus;
	}
	else if ([oper isEqualToString:@"*"])
	{
		operation = Multiply;
	}
	else if ([oper isEqualToString:@"/"])
	{
		operation = Divide;
	}
	
	runningResult = ([calcDisplay.text doubleValue]);
	calcDisplay.text = @"";
}


-(IBAction)number:(UIButton *)sender
{
	if (autoReset) {
		[self clear];
		autoReset = NO;
	}
	
	if ([calcDisplay.text isEqualToString:[[NSNumber numberWithInt: 0]stringValue]])
	{
		calcDisplay.text = @"";
	}
	NSString *num = sender.currentTitle;
	
	if ([calcDisplay.text length] < 25)
	{
		calcDisplay.text= [NSString stringWithFormat:@"%@%@",calcDisplay.text, num];	
	}
	else {
		calcDisplay.text= @"Calc Overload Error";	
		autoReset = YES;
	}

}

-(IBAction)calculate
{
	if (!autoReset) {
		y = ([calcDisplay.text doubleValue]);
	}
	
	brain = [[CalcBrain alloc] init];
	runningResult = [brain calc:runningResult :operation :y];
	
	if (runningResult == INFINITY ) 
	{
		calcDisplay.text= @"Infinity Error";	
	}
	else 
	{
		NSString *checkLength = [[NSNumber numberWithDouble: runningResult]stringValue];

		if ([calcDisplay.text length] < 25)
		{
			calcDisplay.text = checkLength;
		}
		else 
		{
			calcDisplay.text= @"Calc Overload Error";	
		}
	}
	
	autoReset = YES;
}

-(IBAction)clear;
{
	operation = None;
	x = 0;
	y = 0;
	runningResult = 0;
	
	calcDisplay.text = [[NSNumber numberWithInt: 0]stringValue];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
