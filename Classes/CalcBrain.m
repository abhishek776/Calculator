//
//  CalcBrain.m
//  Calculator
//
//  Created by Abhishek Fatehpuria on 7/3/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "CalcBrain.h"

@implementation CalcBrain

// Implements the Calculator operations
-(double)calc:(double)x :(CalcOperation)op :(double)y
{
	switch(op) {
        case Plus :
            return x + y;
			break;
        case Minus:
			return x - y;
            break;
        case Divide:
            return x / y;
            break;
        case Multiply:
            return x * y;
            break;
		default:
			return x + y;
	}
}

@end
