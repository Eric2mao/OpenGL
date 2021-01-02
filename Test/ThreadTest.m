//
//  ThreadTest.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "ThreadTest.h"

@implementation ThreadTest

- (void)test {
    dispatch_queue_t queue = dispatch_queue_create("com.test.queue", DISPATCH_QUEUE_CONCURRENT);//创建了一个并行队列

    dispatch_queue_t conqueue = dispatch_queue_create("com.test.queue", DISPATCH_QUEUE_SERIAL);//创建了一个串行队列
}

@end
