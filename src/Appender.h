//
// Created by Manfred Bergmann on 14.05.18.
//

#import <ob/OBFramework.h>
#import "CoreLogger.h"

@protocol Appender

- (void)append:(OBString *)message level:(LoggingLevel)level loggerName:(OBString *)logger functionName:(OBString *)function;
//- (NSDateFormatter *)newDateTimeFormatter;

@end

@interface BaseAppender : OBObject <Appender>
@end

@interface ConsoleAppender : BaseAppender
@end
