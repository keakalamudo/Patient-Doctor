//
//  Patient.m
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import "Patient.h"

@implementation Patient



- (instancetype)initWithName:(NSString*)patientName healthCard:(BOOL)hc symptoms:(NSString*)sym
{
    self = [super init];
    if (self != nil) {
        self.name = patientName;
        self.isHealthCardValid = hc;
        self.symptoms = sym;
        _prescriptions = [[NSMutableArray alloc] init];
        
    }
    return self;
}
//
//-(Doctor *)visitDoctor{
//    if (self.isHealthCardValid) {
//        Doctor *newDoctor = [[Doctor alloc] init];
//        NSLog(@"Patient was accepted by Dr. %@", newDoctor.name);
//        return newDoctor;
//        
//        
//    }else{
//        NSLog(@"Patient was not accepted. Please provide Health Card.");
//        return nil;
//    }
//}

@end
