//
//  AutoReleasePoolExample.m
//  Algoritms
//
//  Created by Вадим Чистяков on 21.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

#import "AutoReleasePoolExample.h"
#import <UIKit/UIKit.h>

@implementation AutoReleasePoolExample

- (void)example
{
	for (int j = 0; j < 5; j++) {
		for (int i = 0; i < 1000; i ++) {
			UIView *str = [UIView new];
			str.backgroundColor = [UIColor blueColor];
		}
	}
}

- (void)dealloc
{
	
}

@end
