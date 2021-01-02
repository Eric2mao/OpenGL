//
//  NBArc.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "NBArc.h"
#import "Person.h"

@interface NBArc()
{
    Person __weak *_weakPerson;
//    Person __unsafe_unretained *_weakPerson;
}
@end

@implementation NBArc

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testRelease];
        [self testWeak];
        [self testWeak2];
    }
    
    return self;
}

- (void)testRelease {
    Person *per = [[Person alloc] init];
    NSLog(@"%@", per);
}

- (void)testWeak {
    Person* obj = [[Person alloc] init];
    [obj hello];
    
    _weakPerson = obj;
    [_weakPerson hello];
    NSLog(@"%@", _weakPerson);
    
    //超出obj作用范围，obj释放
}

- (void)testWeak2 {
    [_weakPerson hello];
    NSLog(@"testWeak2: %@", _weakPerson);

}

- (void)dealloc {
//    [super dealloc];
    
}

@end
