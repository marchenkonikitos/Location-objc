//
//  ViewController.h
//  Location objc
//
//  Created by Nikita Marchenko on 4/16/18.
//  Copyright © 2018 Nikita Marchenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

