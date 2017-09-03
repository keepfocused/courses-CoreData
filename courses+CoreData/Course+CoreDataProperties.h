//
//  Course+CoreDataProperties.h
//  courses+CoreData
//
//  Created by Admin on 31.08.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Course.h"

NS_ASSUME_NONNULL_BEGIN

@interface Course (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *courseName;
@property (nullable, nonatomic, retain) NSSet<User *> *users;
@property (nullable, nonatomic, retain) Lecturer *lecturer;

@end

@interface Course (CoreDataGeneratedAccessors)

- (void)addUsersObject:(User *)value;
- (void)removeUsersObject:(User *)value;
- (void)addUsers:(NSSet<User *> *)values;
- (void)removeUsers:(NSSet<User *> *)values;

@end

NS_ASSUME_NONNULL_END
