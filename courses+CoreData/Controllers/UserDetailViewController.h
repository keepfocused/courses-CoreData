//
//  UserDetailViewController.h
//  courses+CoreData
//
//  Created by Admin on 27.09.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import "CoreDataViewController.h"
#import "User.h"

@interface UserDetailViewController : CoreDataViewController

@property (strong, nonatomic) User* currentUser;



@end
