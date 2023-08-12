//
//  QuadraticEquation.m
//  Quadratic equation
//
//  Created by user on 12.08.2023.
//

#import "QuadraticEquation.h"

@implementation QuadraticEquation

- (NSDictionary *)quadraticEquation:(int)number1 secondnumber:(int)number2 thirdnumber:(int)number3 {
    
    int bSquared = number2 * number2;
    int discriminant = bSquared - (4 * number1 * number3);
    int isImaginary = discriminant < 0;
    int discrimimantAbsSqrt = sqrt(abs(discriminant));
    
    NSString* text1;
    NSString* text2;
    
    if (isImaginary) {
        int ans1 = -number2 + (discrimimantAbsSqrt / (2 * number1));
        int ans2 = -number2 - (discrimimantAbsSqrt / (2 * number1));
        text1 = [@(ans1) stringValue];
        text2 = [@(ans2) stringValue];
    } else {
        int topFormula = -number2 + discrimimantAbsSqrt;
        int bottomFormula = 2 * number1;
        int totalX = topFormula / bottomFormula;
        
        int topFormula2 = -number2 - discrimimantAbsSqrt;
        int totalX2 = topFormula2 / bottomFormula;
        
        text1 = [@(totalX) stringValue];
        text2 = [@(totalX2) stringValue];
    }
    
    NSDictionary *dict = @{ @"first" : text1, @"second" : text2};
    return dict;
}

@end
