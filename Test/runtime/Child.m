//
//  Child.m
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import "Child.h"
#import <objc/runtime.h>
#import "Child2.h"

@implementation Child

- (void)draw {
    NSLog(@"Draw Child");
}

- (void)draw3 {
    NSLog(@"Draw Child3");
}

//+ (BOOL)resolveInstanceMethod:(SEL)selector {
//    NSString *selectorString = NSStringFromSelector(selector);
//    if (![Child respondsToSelector:selector]) {
//        static dispatch_once_t onceToken;
//        dispatch_once(&onceToken, ^{
//            if([selectorString isEqualToString:@"draw2"]){
//                IMP impl = class_getMethodImplementation([self class], @selector(draw3));
//                class_addMethod([self class], selector, impl, "@v@:");
//            }
//        });
//    }
//    return [super resolveInstanceMethod:selector];
//}

- (id)forwardingTargetForSelector:(SEL)selector {
    if (![Child respondsToSelector:selector]) {
        Child2 *child2 = [[Child2 alloc] init];
        if ([child2 respondsToSelector:selector]) {
            return child2;
        }
    }
    return nil;
    
//    return [super forwardingTargetForSelector:selector];
}

/**
 *    把与尚未处理的那条消息有关的全部细节都封于invocation，此对象包含选择子、目标（target）及参数。
 */
//- (void)forwardInvocation:(NSInvocation*)invocation {
//    NSLog(@"invocation：%@", invocation);
//    [super forwardInvocation:invocation];
//}

@end
