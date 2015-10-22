//
//  Doctor.h
//  
//
//  Created by Kelo Akalamudo on 10/22/15.
//
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *phone;
@property (nonatomic) NSString *email;


- (instancetype)initWithName:(NSString*)doctorName;




@end
