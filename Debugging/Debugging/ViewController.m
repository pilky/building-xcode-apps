//
//  ViewController.m
//  Debugging
//
//  Created by Martin Pilkington on 27/02/2014.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)doSomething:(id)sender {
	NSInteger number = 5;
	number += 6;
	number -= 3;
	number *= 2;
	
	NSString *string = @"test";
	string = @"something else";
	
	UIImage *image = [UIImage imageNamed:@"Image.png"];
	
	[self otherMethod:image];
}

- (void)otherMethod:(UIImage *)aImage {
	CGSize size = aImage.size;
	size.width = 5;
}

@end
