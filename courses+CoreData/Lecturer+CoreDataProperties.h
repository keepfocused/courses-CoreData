//
//  Lecturer+CoreDataProperties.h
//  courses+CoreData
//
//  Created by Admin on 31.08.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Lecturer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Lecturer (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSString *firstName;
@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) Course *course;

@end

NS_ASSUME_NONNULL_END
