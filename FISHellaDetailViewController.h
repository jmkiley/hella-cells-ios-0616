//
//  FISHellaDetailViewController.h
//  
//
//  Created by Jordan Kiley on 6/21/16.
//
//

#import <UIKit/UIKit.h>
#import "FISHellaMasterTableViewController.h"

@interface FISHellaDetailViewController : UIViewController

@property (nonatomic) NSUInteger number;

@property (strong, nonatomic) IBOutlet UILabel *numberLabel;

@end
