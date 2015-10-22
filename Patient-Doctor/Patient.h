//
//  Patient.h
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *phone;
@property (nonatomic) NSString *email;
@property (nonatomic) NSString *symptoms;
@property  BOOL isHealthCardValid;
@property (nonatomic) NSMutableArray *prescriptions;

- (instancetype)initWithName:(NSString*)patientName healthCard:(BOOL)hc symptoms:(NSString*)sym;
//-(Doctor *)visitDoctor;



@end
