//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Abhishek Fatehpuria on 6/25/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalcBrain.h"
#import "math.h"

@interface CalculatorViewController : UIViewController {

	IBOutlet UILabel *calcDisplay;
	CalcOperation operation;
	
	@private
	
	double x;
	double y;
	double runningResult;
	BOOL autoReset;
	CalcBrain *brain;
	
}

-(IBAction)operation:(UIButton *)sender;
-(IBAction)number:(UIButton *)sender;
-(IBAction)calculate;
-(IBAction)clear;


@end

