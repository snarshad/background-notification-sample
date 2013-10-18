#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
  NSLog(@"viewDidLoad");
  [super viewDidLoad];

  GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.8674869
                                                          longitude:151.2069902
                                                               zoom:14];
  GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
  self.view = mapView;
  mapView.delegate = self;

}

#pragma mark - GMSMapViewDelegate

- (void)       mapView:(GMSMapView *)mapView
  idleAtCameraPosition:(GMSCameraPosition *)position {
  NSLog(@"Position: (%f,%f) zoom: %f", position.target.latitude, position.target.longitude, position.zoom);
}

@end
