//
//  UserDetailCell.h
//  courses+CoreData
//
//  Created by Admin on 27.09.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserDetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@end
