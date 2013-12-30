//
//  CalcBrain.h
//  Calculator
//
//  Created by Abhishek Fatehpuria on 7/3/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{ Plus,Minus,Multiply,Divide, None} CalcOperation;

@interface CalcBrain : NSObject {

}

-(double)calc:(double)x:(CalcOperation)op:(double)y;


@end
