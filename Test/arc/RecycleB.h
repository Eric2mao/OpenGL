//
//  RecycleB.h
//  Test
//
//  Created by Ericmao on 2020/11/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RecycleBDelagate <NSObject>

- (void)onClicked;

@end

@interface RecycleB : NSObject

@property (nonatomic, strong) id<RecycleBDelagate> delagate;

@end

NS_ASSUME_NONNULL_END
