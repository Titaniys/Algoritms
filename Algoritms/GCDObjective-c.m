//
//  GCDObjective-c.m
//  Algoritms
//
//  Created by Вадим Чистяков on 21.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

#import "GCDObjective-c.h"

@implementation GCDObjective_c

- (void)example
{
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSLog(@"1");
	});
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSLog(@"2");
		dispatch_sync(dispatch_get_main_queue(),^ {
			NSLog(@"mainSync");
		});
	});
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSLog(@"3");
	});
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSLog(@"4");
		dispatch_async(dispatch_get_main_queue(),^ {
			NSLog(@"mainAsync");
			dispatch_async(dispatch_get_main_queue(),^ {
				NSLog(@"mainAsyncAsync");
			});
		});
	});
	
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSLog(@"5");
		dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
			NSLog(@"6");
		});
	});
}

- (void)exampleTwo
{
	dispatch_queue_t queue = dispatch_queue_create("com.apple.sber", DISPATCH_QUEUE_SERIAL);
	
	dispatch_async(queue, ^{
		NSLog(@"1");
		dispatch_async(queue, ^{
			NSLog(@"2");
		});
	});
	dispatch_sync(queue, ^{
		NSLog(@"3");
	});
	dispatch_async(queue, ^{
		NSLog(@"4");
	});
}
@end
