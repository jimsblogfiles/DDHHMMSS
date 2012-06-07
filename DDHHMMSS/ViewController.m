//
//  ViewController.m
//  DDHHMMSS
//
//  Created by James Border on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void)formatTimer;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

	timerDisplay = [ [UILabel alloc ] initWithFrame:CGRectMake(10, 10, 500, 21) ];
	[timerDisplay setTextAlignment:UITextAlignmentCenter];
	[timerDisplay setCenter:self.view.center];
	[timerDisplay setText:@"-"];
	[self.view addSubview:timerDisplay];
	
	startInterval = [NSDate timeIntervalSinceReferenceDate];
	timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(formatTimer) userInfo:nil repeats:YES];

}

-(void)formatTimer {
	
	stopInterval = [NSDate timeIntervalSinceReferenceDate];
	elapsedTime = stopInterval - startInterval;
	
	int tmp = elapsedTime;
	
	int Days = tmp / (60 * 60 * 24);
	tmp -= Days * (60 * 60 * 24);
	int Hrs = tmp / (60 * 60);
	tmp -= Hrs * (60 * 60);
	int Min = tmp / 60;
	tmp -= Min * 60;
	int Sec = tmp;
	
	NSString *displayString = [NSString stringWithFormat:@"%02i:%02i:%02i:%02i", Days, Hrs, Min, Sec];
	
	timerDisplay.text = displayString;
	
}

- (void)viewDidUnload {

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
