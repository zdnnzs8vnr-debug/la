#import "BSConfig.h"

BOOL gAim = YES, gESP = YES, gTracer = YES, gDist = YES, gDodge = YES, gSuper = YES;
float gRangeTiles = 7.0f, gCRange = 0, gCooldown = 0.40f, gJitter = 6.0f, gLatency = 0.012f;

static NSUserDefaults *D(void) { return NSUserDefaults.standardUserDefaults; }

void cfgLoad(void) {
    NSUserDefaults *d = D();
    if ([d objectForKey:@"v2"]) {
        gAim    = [d boolForKey:@"aim"];
        gESP    = [d boolForKey:@"esp"];
        gTracer = [d boolForKey:@"tracer"];
        gDist   = [d boolForKey:@"dist"];
        gDodge  = [d boolForKey:@"dodge"];
        gSuper  = [d boolForKey:@"super"];
    }
    gCRange = [d floatForKey:@"crange"];
    [d setBool:YES forKey:@"v2"];
}

void cfgSave(void) {
    NSUserDefaults *d = D();
    [d setBool:gAim forKey:@"aim"];
    [d setBool:gESP forKey:@"esp"];
    [d setBool:gTracer forKey:@"tracer"];
    [d setBool:gDist forKey:@"dist"];
    [d setBool:gDodge forKey:@"dodge"];
    [d setBool:gSuper forKey:@"super"];
    [d setFloat:gCRange forKey:@"crange"];
}
