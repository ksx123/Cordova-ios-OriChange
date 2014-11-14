//
//  CDVOriChange.m
//  Site Monitor
//
//  Created by 柯诗雄 on 14-6-4.
//
//

#import "CDVOriChange.h"

@implementation CDVOriChange


- (void)orientationChanges:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    @try{
        NSString* org = [command.arguments objectAtIndex:0];
        if ([org isEqualToString:@"P"]) {
            [self oriChange:UIInterfaceOrientationPortrait];
        }
        else if ([org isEqualToString:@"U"])
        {
            [self oriChange:UIInterfaceOrientationPortraitUpsideDown];
        }
        else if ([org isEqualToString:@"LL"])
        {
            [self oriChange:UIInterfaceOrientationLandscapeLeft];
            
        }
        else if ([org isEqualToString:@"LR"])
        {
            [self oriChange:UIInterfaceOrientationLandscapeRight];
        }
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    @catch(NSException * e){
        NSLog(@"CDVOriChange ERROR: %@",e);
    }
    
}

-(void)oriChange:(UIInterfaceOrientation) ori
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        NSLog(@"viewDidAppear");
        objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), ori);
    }
}

@end
