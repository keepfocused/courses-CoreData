//
//  DataManager.h
//  courses+CoreData
//
//  Created by Admin on 07.09.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
@class User;

@interface DataManager : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+ (DataManager*) sharedManager;

- (User*) createUser;

- (User*) getUserBySelectedLine:(NSInteger)lineNumber;

- (NSArray*) allObjects;

@end
