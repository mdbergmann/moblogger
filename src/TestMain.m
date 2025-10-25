
#import "Logger.h"
#import "CoreLogger.h"

void testLog() {
    [MobLogger initLogger:@"logfile.log" logPrefix:@"LoggerTest" logFilterLevel:LEVEL_WARN appendToFile:YES logToConsole:YES];
    [MobLogger log:@"Hello World" level:LEVEL_WARN];
    [MobLogger log:@"Hello World" level:LEVEL_INFO];
	MobLog(LEVEL_WARN, @"Hello World from macro");
    MobLog(LEVEL_WARN, @"Hello World %@", @"good world");
	[MobLogger closeLogger];
}

int main(void) {
	testLog();
	return 0;
}
