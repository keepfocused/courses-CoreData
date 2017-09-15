//
//  User.h
//  courses+CoreData
//
//  Created by Danil on 12.09.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface User : NSManagedObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *phoneNumber;

@end
