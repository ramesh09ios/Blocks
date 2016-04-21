//
//  ViewController.m
//  MYBlocks
//
//  Created by Blaze Dream on 05/04/16.
//  Copyright © 2016 Blaze Dream. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"


@interface ViewController (){
    void (^GlobalBlock)(NSString*);
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self BlockExecution];
    GlobalBlock(@"Global Block Print My Name RAmesh::");

    
}
-(void)viewWillAppear:(BOOL)animated
{
    _sampleBlock(@"Rajesh",26,@"iosDeveloper",35.00);

    [self GenericMultiplication:^double(int a, int b) {
        return a*b;
    } AndString:@"RAmesh"];
    
    GlobalBlock(@"Global Block Print My SUr Name Pedapati::");

}
-(void)viewDidAppear:(BOOL)animated
{
    _sampleBlock(@"Ramesh",24,@"iosDeveloper",19.00);

    GlobalBlock(@"Global Block Print My EMP ID P563::");

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)BlockExecution
{
    //Using Block in Global and accusses other Classes
    _sampleBlock = ^(NSString *str1,int a,NSString *str2,float f){
        
        NSLog(@"Block excution ::str1 %@ %d %@ %f ",str1,a,str2,f);
    };
    
    //Using Blocks in Global:
    
    GlobalBlock = ^(NSString* str1){
        NSLog(@"Print Block Data :: %@",str1);
    };
    
    
    //Using Block in Local
    
    void (^SecondLocalBlock)(NSString*,NSString*) = ^(NSString *str1,NSString* str2){
        NSLog(@"Second Block :: %@  %@",str1,str2);
    };

    SecondLocalBlock(@"RAmesh",@"Pedapati");
    SecondLocalBlock(@"Rajesh",@"L");
    SecondLocalBlock(@"Siva",@"Vignish");
    SecondLocalBlock(@"Anushya",@"Blaze");
}

//Using block in Methods:

-(void)GenericMultiplication:(MultyplyTwoValues)mulBlock AndString:(NSString *)stringValue{
    NSLog(@"OUR String:: %@ == %f",stringValue,mulBlock(2,3));
}

-(IBAction)moveToAnother:(UIButton*)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FirstViewController*fvc = [storyboard instantiateViewControllerWithIdentifier:@"FirstViewID"];
    fvc.aStr = @"RAmesH";
    fvc.sampleBlock = self.sampleBlock;
    [self.navigationController pushViewController:fvc animated:YES];
}
@end
