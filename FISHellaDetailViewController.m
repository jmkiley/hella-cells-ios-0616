//
//  FISHellaDetailViewController.m
//  
//
//  Created by Jordan Kiley on 6/21/16.
//
//

#import "FISHellaDetailViewController.h"

@implementation FISHellaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberLabel.text = [ NSString stringWithFormat:@"%lu", self.number];
}

- (void)didReceiveMemoryWarning {
    [ super didReceiveMemoryWarning];
}

@end
