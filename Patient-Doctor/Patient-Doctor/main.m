//
//  main.m
//  Patient-Doctor
//
//  Created by Kelo Akalamudo on 10/22/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
         Doctor *doctor1 = [[Doctor alloc] initWithName:@"Dr. Tom"];
         Patient *patient1 = [[Patient alloc] initWithName:@"Jerry"];
        
    return 0;
    }
}
