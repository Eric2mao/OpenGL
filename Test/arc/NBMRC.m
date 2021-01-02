//
//  NBMRC.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "NBMRC.h"
#import "Person.h"

@interface NBMRC ()
{
    Person *_weakPerson;
}

@end

@implementation NBMRC

- (instancetype)init {
    self = [super init];
    if (self) {
        [self test3];
//        [self test3];
    }
    
    return self;
}

- (void)test1 {
    id obj = [[NSObject alloc] init];
    
    NSLog(@"%@", obj);
    [obj release];
    
    NSLog(@"%@", obj);
}


- (void)test2 {
    id obj = [[NSObject alloc] init];
    
    NSLog(@"%@", obj);
    [obj release];
    [obj release];
}

- (void)test3 {
    {
        id obj1 = [Person getPerson];
        NSLog(@"%@", obj1);
    }
    @autoreleasepool {
        id obj2 = [Person getPerson];
        NSLog(@"%@", obj2);
    }
//    id obj1 = [Person getPerson];
    id obj = [NSMutableArray array];  //alloc new copy mutablecopy
    
    NSLog(@"%@", obj);
//    [obj release];
}

- (void)testAutoRelease {
    id obj = [[Person alloc] init];
    
    [obj autorelease];
    NSLog(@"%@", obj);
}


- (void)testAutoRelease2 {
    id obj = [Person getPerson];
    
//    [obj autorelease];
    NSLog(@"%@", obj);
}

- (void)testAutoRelease3 {
    id obj = [Person leakPerson];
    
//    [obj release];
    NSLog(@"%@", obj);
}

- (void)test4 {
    {
        id obj = [[Person alloc] init];
        
//        [obj release]
    }
}


@end
