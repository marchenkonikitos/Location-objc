//
//  ViewController.m
//  Location objc
//
//  Created by Nikita Marchenko on 4/16/18.
//  Copyright © 2018 Nikita Marchenko. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

@synthesize locationManager;
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    mapView.delegate = self;
    
    locationManager = [CLLocationManager new];
    locationManager.delegate = self;
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager startUpdatingLocation];
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
}

@end
