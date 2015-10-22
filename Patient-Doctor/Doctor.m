//
//  Doctor.m
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import "Doctor.h"


@implementation Doctor


//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _acceptedPatients = [[NSMutableArray alloc] init];
//    }
//    return self;
//}

//@property (nonatomic) NSDictionary *medicalFiles;

-(int)getRandomNumberBetween:(int)from to:(int)to {
    int random = (int)from + arc4random() % (to-from+1);
    self.medValue = random;
    return random;
}

- (instancetype)initWithName:(NSString*)doctorName specializations:(NSString*)specs allfiles:(NSMutableDictionary *)files
{
    self = [super init];
    if (self != nil) {
        self.name = doctorName;
        self.specialization = specs;
        _acceptedPatients = [[NSMutableArray alloc] init];
        _medicalFiles = files;
        self.medValue = [self getRandomNumberBetween:1 to:6];
        
        
    }
    return self;
}

-(Patient *)patientVisit:(Patient*)patient{
    if (patient.isHealthCardValid) {
        NSLog(@"\nPatient %@ was accepted by %@", patient.name, self.name);
        [_acceptedPatients addObject:patient];
        return patient;
    }else{
        NSLog(@"\nPatient %@ was not accepted by %@. \nPlease provide valid Health Card.", patient.name, self.name);
        return nil;
    }
}

-(void)requestMedication:(Patient*)patient{
    if ([self.acceptedPatients containsObject:patient]) {
        NSLog(@"\nPatient %@ was given medication by %@", patient.name, self.name);
        
        if (self.medValue == 1){
            _recommendation = @"Soup";
        }else if (self.medValue == 2){
            _recommendation = @"Chicken";
        }else if (self.medValue == 3){
            _recommendation = @"Coke";
        }else if (self.medValue == 4){
            _recommendation = @"Sprite";
        }else if (self.medValue == 5){
            _recommendation = @"Corn";
        }else _recommendation = @"water";
        
        [patient.prescriptions addObject:_recommendation];
        [_medicalFiles setValue:patient.name forKey:_recommendation];
        
        NSLog(@"\nPatient %@ was given:%@",patient.name, patient.prescriptions);
        
//        return patient;
        
    }else{
        NSLog(@"\nPatient %@ has no records with %@.", patient.name, self.name);
//        return nil;
    }
}
@end
