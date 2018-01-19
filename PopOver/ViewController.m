//
//  ViewController.m
//  PopOver
//
//  Created by Student-13 on 19/01/18.
//  Copyright © 2018 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)MyButton:(id)sender {
    PopViewController *controller=[self.storyboard instantiateViewControllerWithIdentifier:@"PopViewController"];
    controller.modalPresentationStyle=UIModalPresentationPopover
    ;
    [self presentViewController:controller animated:YES completion:nil];
    UIPopoverPresentationController *popcontroller=[controller popoverPresentationController];
    popcontroller.sourceRect=CGRectMake(300, 50, 100, 100);
    [popcontroller setPermittedArrowDirections:UIPopoverArrowDirectionAny];
    popcontroller.delegate=self;
}
@end
