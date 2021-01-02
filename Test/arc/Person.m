//
//  Person.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "Person.h"

@implementation Person

- (void)hello {
    NSLog(@"%@ Hello", self);
}

+ (Person *)getPerson {
    return [[[Person alloc] init] autorelease];
}

+ (Person *)leakPerson {
    return [[Person alloc] init];
}

- (void)dealloc {
    NSLog(@"%@ was dealloced", self);
    
    [super dealloc];
}
@end
