//
//  AppDelegate.m
//  SparkleDemo
//
//  Created by zhouqiang on 2018/7/14.
//  Copyright © 2018 Bluelich. All rights reserved.
//

#import "AppDelegate.h"
#import <LetsMove/PFMoveApplication.h>
#import <Sparkle/Sparkle.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)config
{
    PFMoveToApplicationsFolderIfNecessary();
    SUUpdater * updater = SUUpdater.sharedUpdater;
    updater.feedURL = [NSURL URLWithString:@"https://raw.githubusercontent.com/Bluelich/SparkleDemo/dev/files/sparkletestcast.xml"];
//    updater.userAgentString = @"";
//    updater.httpHeaders = @{};
    updater.sendsSystemProfile = YES;
    updater.automaticallyChecksForUpdates = YES;
    updater.automaticallyDownloadsUpdates = YES;
    updater.updateCheckInterval = 60 * 60;
//    [updater checkForUpdateInformation];
//    updater.decryptionPassword = @"";//For .dmg
    [updater checkForUpdates:self];
//    [updater installUpdatesIfAvailable];
}
- (BOOL)validateMenuItem:(NSMenuItem *)menuItem
{
    return [SUUpdater.sharedUpdater validateMenuItem:menuItem];
}
- (void)checkupdate:(NSMenuItem *)item
{
    
}

@end
