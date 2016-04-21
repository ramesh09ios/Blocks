//
//  FirstViewController.m
//  MYBlocks
//
//  Created by Blaze Dream on 05/04/16.
//  Copyright © 2016 Blaze Dream. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize sampleBlock;
- (void)viewDidLoad {
    [super viewDidLoad];

}
-(void)viewWillAppear:(BOOL)animated
{
    
}
-(void)viewDidAppear:(BOOL)animated
{
   sampleBlock(@"ramesh",25,@"ios developer",199.99);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)moveToAnother:(UIButton*)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *sec = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewID"];
    sec.sampleblocks = sampleBlock;
    [self.navigationController pushViewController:sec animated:YES];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
