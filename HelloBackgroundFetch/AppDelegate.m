#import "AppDelegate.h"
#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [GMSServices provideAPIKey:@"INSERT_GOOGLE_MAPS_API_FOR_iOS_KEY_HERE"];
  NSLog(@"Google Maps SDK for iOS license info:\n%@", [GMSServices openSourceLicenseInfo]);

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  ViewController * viewController = [ViewController new];
  self.window.rootViewController = viewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  NSLog(@"applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  NSLog(@"applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  NSLog(@"applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  NSLog(@"applicationWillTerminate");
}

- (void)                application:(UIApplication *)application
  performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {

  NSLog(@"In application:performFetchWithCompletionHandler: callback");
  completionHandler(UIBackgroundFetchResultNewData);
}

@end
