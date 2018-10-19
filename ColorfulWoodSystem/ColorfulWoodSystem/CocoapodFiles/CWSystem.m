//
//  CWSystem.m
//  ColorfulWoodSystem
//
//  Created by 大新 on 2018/5/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWSystem.h"
#import <sys/utsname.h>
#import <AdSupport/ASIdentifierManager.h>
#import <UIKit/UIDevice.h>

@implementation CWSystem


/**
 * 获取手机信息
 */
+ (CWSystemInfo *)interface_systemInfo{

    CWSystemInfo * info = [CWSystemInfo new];

    info.m_appVersion = [CWSystem interface_appVersion];
    info.m_iphoneName = [CWSystem interface_iphoneName];
    info.m_iphoneType = [CWSystem interface_iphoneType];
    info.m_iphoneUUID = [CWSystem interface_iphoneUUID];
    info.m_iphoneSystemVersion = [CWSystem interface_iphoneSystemVersion];

    return info;
}

/**
 * 获取手机类型
 */
+ (NSString *)interface_iphoneType {

    struct utsname systemInfo;

    uname(&systemInfo);

    NSString*platform = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];

    if([platform isEqualToString:@"iPhone1,1"])
        return @"iPhone 2G";

    if([platform isEqualToString:@"iPhone1,2"])
        return @"iPhone 3G";

    if([platform isEqualToString:@"iPhone2,1"])
        return @"iPhone 3GS";

    if([platform isEqualToString:@"iPhone3,1"])
        return @"iPhone 4";

    if([platform isEqualToString:@"iPhone3,2"])
        return @"iPhone 4";

    if([platform isEqualToString:@"iPhone3,3"])
        return @"iPhone 4";

    if([platform isEqualToString:@"iPhone4,1"])
        return @"iPhone 4S";

    if([platform isEqualToString:@"iPhone5,1"])
        return @"iPhone 5";

    if([platform isEqualToString:@"iPhone5,2"])
        return @"iPhone 5";

    if([platform isEqualToString:@"iPhone5,3"])
        return @"iPhone 5c";

    if([platform isEqualToString:@"iPhone5,4"])
        return @"iPhone 5c";

    if([platform isEqualToString:@"iPhone6,1"])
        return @"iPhone 5s";

    if([platform isEqualToString:@"iPhone6,2"])
        return @"iPhone 5s";

    if([platform isEqualToString:@"iPhone7,1"])
        return @"iPhone 6 Plus";

    if([platform isEqualToString:@"iPhone7,2"])
        return @"iPhone 6";

    if([platform isEqualToString:@"iPhone8,1"])
        return @"iPhone 6s";

    if([platform isEqualToString:@"iPhone8,2"])
        return @"iPhone 6s Plus";

    if([platform isEqualToString:@"iPhone8,4"])
        return @"iPhone SE";

    if([platform isEqualToString:@"iPhone9,1"])
        return @"iPhone 7";

    if([platform isEqualToString:@"iPhone9,2"])
        return @"iPhone 7 Plus";

    if([platform isEqualToString:@"iPhone10,1"])
        return @"iPhone 8";

    if([platform isEqualToString:@"iPhone10,4"])
        return @"iPhone 8";

    if([platform isEqualToString:@"iPhone10,2"])
        return @"iPhone 8 Plus";

    if([platform isEqualToString:@"iPhone10,5"])
        return @"iPhone 8 Plus";

    if([platform isEqualToString:@"iPhone10,3"])
        return @"iPhone X";

    if([platform isEqualToString:@"iPhone10,6"])
        return @"iPhone X";

    if([platform isEqualToString:@"iPod1,1"])
        return @"iPod Touch 1G";

    if([platform isEqualToString:@"iPod2,1"])
        return @"iPod Touch 2G";

    if([platform isEqualToString:@"iPod3,1"])
        return @"iPod Touch 3G";

    if([platform isEqualToString:@"iPod4,1"])
        return @"iPod Touch 4G";

    if([platform isEqualToString:@"iPod5,1"])
        return @"iPod Touch 5G";

    if([platform isEqualToString:@"iPad1,1"])
        return @"iPad 1G";

    if([platform isEqualToString:@"iPad2,1"])
        return @"iPad 2";

    if([platform isEqualToString:@"iPad2,2"])
        return @"iPad 2";

    if([platform isEqualToString:@"iPad2,3"])
        return @"iPad 2";

    if([platform isEqualToString:@"iPad2,4"])
        return @"iPad 2";

    if([platform isEqualToString:@"iPad2,5"])
        return @"iPad Mini 1G";

    if([platform isEqualToString:@"iPad2,6"])
        return @"iPad Mini 1G";

    if([platform isEqualToString:@"iPad2,7"])
        return @"iPad Mini 1G";

    if([platform isEqualToString:@"iPad3,1"])
        return @"iPad 3";

    if([platform isEqualToString:@"iPad3,2"])
        return @"iPad 3";

    if([platform isEqualToString:@"iPad3,3"])
        return @"iPad 3";

    if([platform isEqualToString:@"iPad3,4"])
        return @"iPad 4";

    if([platform isEqualToString:@"iPad3,5"])
        return @"iPad 4";

    if([platform isEqualToString:@"iPad3,6"])
        return @"iPad 4";

    if([platform isEqualToString:@"iPad4,1"])
        return @"iPad Air";

    if([platform isEqualToString:@"iPad4,2"])
        return @"iPad Air";

    if([platform isEqualToString:@"iPad4,3"])
        return @"iPad Air";

    if([platform isEqualToString:@"iPad4,4"])
        return @"iPad Mini 2G";

    if([platform isEqualToString:@"iPad4,5"])
        return @"iPad Mini 2G";

    if([platform isEqualToString:@"iPad4,6"])
        return @"iPad Mini 2G";

    if([platform isEqualToString:@"iPad4,7"])
        return @"iPad Mini 3";

    if([platform isEqualToString:@"iPad4,8"])
        return @"iPad Mini 3";

    if([platform isEqualToString:@"iPad4,9"])
        return @"iPad Mini 3";

    if([platform isEqualToString:@"iPad5,1"])
        return @"iPad Mini 4";

    if([platform isEqualToString:@"iPad5,2"])
        return @"iPad Mini 4";

    if([platform isEqualToString:@"iPad5,3"])
        return @"iPad Air 2";

    if([platform isEqualToString:@"iPad5,4"])
        return @"iPad Air 2";

    if([platform isEqualToString:@"iPad6,3"])
        return @"iPad Pro 9.7";

    if([platform isEqualToString:@"iPad6,4"])
        return @"iPad Pro 9.7";

    if([platform isEqualToString:@"iPad6,7"])
        return @"iPad Pro 12.9";

    if([platform isEqualToString:@"iPad6,8"])
        return @"iPad Pro 12.9";

    if([platform isEqualToString:@"i386"])
        return @"iPhone Simulator";

    if([platform isEqualToString:@"x86_64"])
        return @"iPhone Simulator";

    return platform;
}


/**
 * 获取app版本号
 */
+ (NSString*)interface_appVersion{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

/**
 * 获取设备UUID
 * 通用唯一标识符,UUID是指在一台机器上生成的数字，它保证对在同一时空中的所有机器都是唯一的
 */
+ (NSString*)interface_iphoneUUID{
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

/**
 * 获取系统版本号
 */
+ (NSString*)interface_iphoneSystemVersion{
    return [[UIDevice currentDevice] systemVersion];
}

/**
 * 获取设备名称
 */
+ (NSString*)interface_iphoneName{
    return [[UIDevice currentDevice] name];
}

/**
 * 判断是否AppStore的版本比较新: YES AppStore版本比较新
 */
+ (BOOL)interface_checkAppId:(NSString*)appId version:(NSString*)version{

    if (!appId || !version) {
        return NO;
    }

    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://itunes.apple.com/lookup?id=%@",appId]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    if (!data) {
        return NO;
    }
    NSDictionary *responseObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    NSArray *appInfos = responseObject[@"results"];
    if (!appInfos || appInfos.count <= 0) {
        return NO;
    }
    NSDictionary *appInfo = appInfos[0];

    if (!appInfo) {
        return NO;
    }

    NSString * verStore = appInfo[@"version"];

    if (!verStore) {
        return NO;
    }

    NSArray<NSString *> * arrayLocal = [version componentsSeparatedByString:@"."];
    NSArray<NSString *> * arrayNet = [verStore componentsSeparatedByString:@"."];

    if (arrayLocal && arrayNet && arrayLocal.count == 3 && arrayNet.count==3) {

        //第一个版本号
        if ([arrayNet[0] intValue] > [arrayLocal[0] intValue]) {
            return YES;
        }else{

            //如果第一个版本号相同，比较第二个
            if ([arrayNet[0] intValue] == [arrayLocal[0] intValue]) {

                if ([arrayNet[1] intValue] > [arrayLocal[1] intValue]) {
                    return YES;
                }else{

                    if ([arrayNet[1] intValue] == [arrayLocal[1] intValue]) {

                        if ([arrayNet[2] intValue] > [arrayLocal[2] intValue]){
                            return YES;
                        }
                    }

                }
            }
        }
    }

    return NO;
}

@end
