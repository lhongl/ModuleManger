//
//  ModuleManager.h
//  MEModuleManger
//
//  Created by hongliang li on 2017/12/22.
//  Copyright © 2017年 hongliang licom.zhangshangjiankang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

@protocol Module <UIApplicationDelegate>

@end

@interface ModuleManager : NSObject

+ (instancetype)sharedInstance;

//注册
- (void)registerModule:(Class)moduleClass ;

//返回所有Models
- (NSArray<id<Module>> *)allModules;

@end
