//
//  ViewController.h
//  DDHHMMSS
//
//  Created by James Border on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

	NSTimeInterval stopInterval;
	NSTimeInterval startInterval;
	NSTimeInterval elapsedTime;

	NSTimer *timer;

	UILabel *timerDisplay;	

}

@end
