//
//  FISHellaMasterTableViewController.m
//
//
//  Created by Jordan Kiley on 6/21/16.
//
//

#import "FISHellaMasterTableViewController.h"

@implementation FISHellaMasterTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityIdentifier = @"Table";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 101;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"numberCell"];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"numberCell"];
//    }
    cell.textLabel.text = [ NSString stringWithFormat:@"%lu", indexPath.row+1];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *)segue.destinationViewController ;
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    detailVC.number = selectedIndexPath.row+1;
    NSLog(@"%lu", selectedIndexPath.row+1);
    
}
@end
