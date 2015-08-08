//
//  ViewController.m
//  TestHTTPStubs
//
//  Created by Wang, Sunny on 8/8/15.
//  Copyright (c) 2015 CapitalOne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

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
- (IBAction)buttonTapped:(id)sender {
    NSURL *imageURL = [NSURL URLWithString:@"http://example.com/ebay.png"];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *image = [UIImage imageWithData:imageData];
    self.imageView.image = image;
}

@end
