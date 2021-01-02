//
//  Person.h
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)hello;

+ (Person *)getPerson;

+ (Person *)leakPerson;
@end

NS_ASSUME_NONNULL_END
