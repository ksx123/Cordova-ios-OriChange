//
//  CDVOriChange.h
//  Site Monitor
//
//  Created by 柯诗雄 on 14-6-4.
//
//

#import <Cordova/CDVPlugin.h>

@interface CDVOriChange : CDVPlugin
{}


- (void)orientationChanges:(CDVInvokedUrlCommand*)command;
    
@end
