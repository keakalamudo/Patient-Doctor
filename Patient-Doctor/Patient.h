//
//  Patient.h
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *phone;
@property (nonatomic) NSString *email;

- (instancetype)initWithName:(NSString*)patientName;



@end
