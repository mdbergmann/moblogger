//
//  MobLogger.h
//  MobLogger
//
//  Created by Manfred Bergmann on 02.06.05.
//  Copyright 2005 mabe. All rights reserved.
//

#import <ob/OBFramework.h>

// define for logging
#define MobLog(LEVEL,...) [MobLogger log:[OBString stringWithFormat:@"[%s] %@", __PRETTY_FUNCTION__, [OBString stringWithFormat:__VA_ARGS__]] level:LEVEL]

@interface MobLogger : OBObject {
}

// init or close the logger
+ (int)initLogger:(OBString *)logPath
		logPrefix:(OBString *)aPrefix
   logFilterLevel:(int)aLevel
	 appendToFile:(BOOL)fileAppend
	 logToConsole:(BOOL)consoleLogging;

+ (int)closeLogger;

// set or get the logfilter level
+ (void)setLogFilterLevel:(int)aLevel;
+ (int)logFilterLevel;

// set or get logPrefix
+ (void)setLogPrefix:(OBString *)aPrefix;
+ (OBString *)logPrefix;

// make logoutput
+ (int)log:(OBString *)message level:(int)aLevel;

@end
