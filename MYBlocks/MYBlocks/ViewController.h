//
//  ViewController.h
//  MYBlocks
//
//  Created by Blaze Dream on 05/04/16.
//  Copyright © 2016 Blaze Dream. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SampleBlock)(NSString*,int,NSString*,float);
typedef double(^MultyplyTwoValues)(int,int);
@interface ViewController : UIViewController

@property(nonatomic,copy) SampleBlock sampleBlock;

-(void)GenericMultiplication:(MultyplyTwoValues)mulBlock AndString:(NSString*)stringValue;

@end

