//
// Created by Manfred Bergmann on 14.05.18.
//

#import "Appender.h"


@implementation BaseAppender {
    //NSDateFormatter *dateFormatter;
    OBString *pattern;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        //dateFormatter = [self newDateTimeFormatter];
        pattern = @"[d] [[l]] [c] [m] - [M]";
    }

    return self;
}

- (void)dealloc {
	//[dateFormatter release];

    [super dealloc];
}

/*
- (NSDateFormatter *)newDateTimeFormatter {
    NSDateFormatter *ret = [[NSDateFormatter alloc] init];
    [ret setDateStyle:NSDateFormatterShortStyle];
    [ret setTimeStyle:NSDateFormatterMediumStyle];
    return ret;
}
*/

- (OBString *)computePattern:(OBString *)message level:(LoggingLevel)level loggerName:(OBString *)logger functionName:(OBString *)function {
	return nil;
}

@end

@implementation ConsoleAppender

@end
