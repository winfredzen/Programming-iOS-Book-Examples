

#import "MyLayer.h"

@implementation MyLayer

// @dynamic can't be expressed in Swift...
// ...so we need to express it in Objective-C
// (Swift "dynamic" exists but it isn't sufficient to allow implicit animation:
// if we don't declare it in Objective-C, our actionForKey won't be called for it)

@dynamic thickness;


@end