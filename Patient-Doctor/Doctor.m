//
//  Doctor.m
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

- (instancetype)initWithName:(NSString*)doctorName
{
    self = [super init];
    if (self != nil) {
        self.name = doctorName;
    }
    return self;
}

@end
