//
//  Patient.m
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

- (instancetype)initWithName:(NSString*)patientName
{
    self = [super init];
    if (self != nil) {
        self.name = patientName;
    }
    return self;
}


@end
