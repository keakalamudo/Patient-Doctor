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
         NSMutableDictionary *globalMedFiles = [NSMutableDictionary dictionary];
        
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Dr. Tom" specializations:@"Surgery" allfiles:globalMedFiles];
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Dr. Bullwinkle" specializations:@"Surgery" allfiles:globalMedFiles];
        Doctor *doctor3 = [[Doctor alloc] initWithName:@"Dr. Spongebob" specializations:@"Surgery" allfiles:globalMedFiles];
        Doctor *doctor4 = [[Doctor alloc] initWithName:@"Dr. Daffy Duck" specializations:@"Surgery" allfiles:globalMedFiles];
        Doctor *doctor5 = [[Doctor alloc] initWithName:@"Dr. Porky Pug" specializations:@"Surgery" allfiles:globalMedFiles];
        
        
        //Patient initializations
        Patient *patient1 = [[Patient alloc] initWithName:@"Jerry" healthCard:YES symptoms:@"Cold"];
        Patient *patient2 = [[Patient alloc] initWithName:@"Bugs Bunny" healthCard:NO symptoms:@"Fatigue"];
        Patient *patient3 = [[Patient alloc] initWithName:@"Homer Simpson" healthCard:YES symptoms:@"Allergies"];
        Patient *patient4 = [[Patient alloc] initWithName:@"Mickey Mouse" healthCard:YES symptoms:@"Nausea"];
        Patient *patient5 = [[Patient alloc] initWithName:@"Fred Flintstone" healthCard:YES symptoms:@"Mono"];
        Patient *patient6 = [[Patient alloc] initWithName:@"Popeye" healthCard:YES symptoms:@"FLU"];
        Patient *patient7 = [[Patient alloc] initWithName:@"Rocky" healthCard:YES symptoms:@"SORE THROAT"];
        

        
        [doctor1 patientVisit:patient1];
        [doctor1 requestMedication:patient1];
        
        [doctor2 patientVisit:patient2];
        [doctor2 requestMedication:patient2];
        
        [doctor3 patientVisit:patient3];
        [doctor3 requestMedication:patient3];
        
        [doctor4 patientVisit:patient4];
        [doctor4 requestMedication:patient4];
        
        [doctor5 patientVisit:patient5];
        [doctor5 requestMedication:patient5];
 
        [doctor1 patientVisit:patient6];
        [doctor1 requestMedication:patient6];
        
        [doctor3 patientVisit:patient3];
        [doctor3 requestMedication:patient3];
        

        
        
    return 0;
    }
}
