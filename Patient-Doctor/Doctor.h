//
//  Doctor.h
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *phone;
@property (nonatomic) NSString *email;
@property (nonatomic) NSString *specialization;
@property (nonatomic) int medValue;
@property (nonatomic) NSString *recommendation;

@property (nonatomic) NSDictionary *medicalFiles;

@property (nonatomic) NSMutableArray *acceptedPatients;
- (instancetype)initWithName:(NSString*)doctorName specializations:(NSString*)specs allfiles:(NSMutableDictionary*)files;
-(Patient *)patientVisit:(Patient*)newPatient;
-(void)requestMedication:(Patient*)oldPatient;





@end
