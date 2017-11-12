//
//  UserDetailViewController.m
//  courses+CoreData
//
//  Created by Admin on 27.09.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import "UserDetailViewController.h"
#import "UserDetailCell.h"
#import "User.h"

@interface UserDetailViewController ()
@property (strong, nonatomic) NSIndexPath* tempIndexPath;
@property (strong, nonatomic) User* user;



@end

@implementation UserDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"current user = %@", self.currentUser);
    

    
    //if (self.currentUser != nil) {
        
       // self.user = [[DataManager sharedManager] getUserBySelectedLine:self.currentUser];
        
        
  //  }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (IBAction)SaveAndBack:(UIButton *)sender {
    
    if (self.currentUser == nil ) {
    
        User* user = [[DataManager sharedManager] createUser];
        
        UserDetailCell* tempCell = [self.tableView cellForRowAtIndexPath:self.tempIndexPath];
        
        user.firstName = tempCell.firstNameTextField.text;
        user.lastName = tempCell.lastNameTextField.text;
    
        [[DataManager sharedManager] saveContext];
    
        NSLog(@"Save button pressed");
    
        UINavigationController *navigationController = self.navigationController;
        [navigationController popViewControllerAnimated:YES];
        
    }
    if (self.currentUser) {
        
        User* user = self.currentUser;
        
        UserDetailCell* tempCell = [self.tableView cellForRowAtIndexPath:self.tempIndexPath];
        user.firstName = tempCell.firstNameTextField.text;
        user.lastName = tempCell.lastNameTextField.text;
        
        [[DataManager sharedManager] saveContext];
        
        NSLog(@"Save button pressed");
        
        UINavigationController *navigationController = self.navigationController;
        [navigationController popViewControllerAnimated:YES];
        
        
        
        
    }
    

}

- (User*) createUser
{
    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:self.managedObjectContext];
   // NSIndexPath* detailedCellIndexPath = [[NSIndexPath alloc] initWithIndex:0];
    
    

    //user.firstName =
    
    return user;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 1;
    }
    
    /*
    
    if (section == 1) {
        return 1;
    }
    
    if (section == 2) {
        return 0;
    }
     
     */
    
    
    
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    
    NSString* detailUserIdentifier = @"UserDetail";
    NSString* courseIdentifier = @"Course";
    NSString* titleIdentifier = @"Title";
    
    if (indexPath.section == 0) {
        
        self.tempIndexPath = indexPath;
        
        UserDetailCell* detailCell = [tableView dequeueReusableCellWithIdentifier:detailUserIdentifier];
        
        if (!detailCell) {
            detailCell = [[UserDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:detailUserIdentifier];
        }
        
        detailCell.userImageView.image = [UIImage imageNamed:@"photo.jpg"];
        
        if (self.currentUser) {
            
            detailCell.firstNameTextField.text = self.currentUser.firstName;
            detailCell.lastNameTextField.text = self.currentUser.lastName;
            detailCell.cityTextField.text = self.currentUser.city;
            detailCell.phoneTextField.text = self.currentUser.phoneNumber;
        }
        
        return detailCell;
    }
    /*
    
    if (indexPath.section == 1) {
        <#statements#>
    }
    
    if (indexPath.section == 2) {
        return nil;
    }
    */
    
    

    
    return nil;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
