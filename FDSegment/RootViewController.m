//
//  RootViewController.m
//  FDSegment
//
//  Created by 笑虎 on 13-6-8.
//  Copyright (c) 2013年 王谦. All rights reserved.
//

#import "RootViewController.h"
#import "FDSegmentedControl.h"

@interface RootViewController ()
<FDSegmentedControlDelegate>

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"切换TAG"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
        
    NSArray *item = @[@"头条",@"地方",@"娱乐",@"地产",@"股票"];
    FDSegmentedControl *seg = [[FDSegmentedControl alloc] initWithItems:item];
    [seg setDelegate:self];
    [seg setFrame:CGRectMake(10, 10, 300, 30)];
    [self.view addSubview:seg];
    [seg release];
}

- (void)FDSegmentedControlSelectIndex:(NSInteger)index segmentView:(FDSegmentedControl *)segmentView
{
    NSLog(@"%d",index);
}

@end
