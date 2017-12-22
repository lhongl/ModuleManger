//
//  ModuleManager.m
//  MEModuleManger
//
//  Created by hongliang li on 2017/12/22.
//  Copyright © 2017年 hongliang licom.zhangshangjiankang. All rights reserved.
//

#import "ModuleManager.h"
@interface ModuleManager ()

@property (nonatomic, strong) NSMutableArray<id<Module>> *modules;

@end

@implementation ModuleManager

+ (instancetype)sharedInstance
{
    static ModuleManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}

- (NSMutableArray<id<Module>> *)modules
{
    if (!_modules) {
        _modules = [NSMutableArray array];
    }
    return _modules;
}

- (NSArray<id<Module>> *)allModules
{
    return self.modules;
}

- (void)registerModule:(Class)moduleClass {
    __block id module = nil;
    [[ModuleManager sharedInstance].modules enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[moduleClass class]]) {
            module = obj;
            *stop = YES;
        }
    }];
    if (!module) {
          id<Module> module = [[moduleClass alloc] init];
        [[ModuleManager sharedInstance].modules addObject:module];
    }
}

- (void)addModule:(id<Module>) module
{
    if (![self.modules containsObject:module]) {
        [self.modules addObject:module];
    }
}

@end
