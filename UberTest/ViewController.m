//
//  ViewController.m
//  UberTest
//
//  Created by Dodobal-1 on 5/30/16.
//  Copyright © 2016 Eugene_Frank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.count=0;
    NSTimer *t = [NSTimer scheduledTimerWithTimeInterval: 10.0
                                                  target: self
                                                selector:@selector(onChangeImage:)
                                                userInfo: nil repeats:YES];
}

-(void)onChangeImage:(NSTimer *) timer{
    
    if (self.count % 6 ==0){
        self.image.image = [UIImage imageNamed: @"1.png"];
        NSLog(@"1.png");
    }
    else if (self.count % 6 ==1){
        self.image.image = [UIImage imageNamed: @"2.png"];
        NSLog(@"2.png");
    }
    else if (self.count %6 ==2){
        self.image.image=[UIImage imageNamed:@"3.png"];
        NSLog(@"3.png");
    }
    else if (self.count %6 ==3){
        self.image.image=[UIImage imageNamed:@"4.png"];
        NSLog(@"4.png");
    }
    else if (self.count %6 ==4){
        self.image.image=[UIImage imageNamed:@"5.png"];
        NSLog(@"5.png");
    }
    else{
        self.image.image=[UIImage imageNamed:@"6.png"];
        NSLog(@"6.png");
    }
    self.count++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
