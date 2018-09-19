//
//  ViewController.m
//  IOS-ObjectiveC-HelloWorld
//
//  Created by Pooya on 2018-09-15.
//  Copyright © 2018 Pooya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *helloLabel;
    @property (weak, nonatomic) IBOutlet UIButton *tapButton;
@end

NSMutableArray *testArray ;

@implementation ViewController

    @synthesize helloLabel = _helloLabel;
    @synthesize tapButton = _tapButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    testArray = [NSMutableArray arrayWithObjects:  @"foo", @"bar", nil];
    _helloLabel.text = @"Hello TO Objective-C";
}

- (IBAction)tapAct:(UIButton *)sender {
   // self.crossView.alpha = 0.5;
    NSLog(@"%@", _tapButton.titleLabel.text);
    NSLog(@"%@", _helloLabel.text);
    NSLog(@"%@",testArray);
    if  ([_tapButton.titleLabel.text isEqual: @"Tap Done"]) {
        _helloLabel.text = @"Did You realy Taped again?";
        [_tapButton setTitle:@"Tap Here" forState:UIControlStateNormal];
    } else {
        _helloLabel.text = @"Did You realy Taped?";
        [_tapButton setTitle:@"Tap Done" forState:UIControlStateNormal];
    }
}


@end
