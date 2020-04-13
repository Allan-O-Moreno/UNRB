//
//  MapView.swift
//  UNRB
//
//  Created by Johan  on 4/13/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import MapKit
import SwiftUI

struct MapViewAB: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewAB
        
        init(_ parent: MapViewAB){
            self.parent = parent
        }
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
        /*func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) ->MKAnnotationView?{
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }*/
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = "Ansari Business Building"
        annotation.subtitle = "Ansari"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.540029, longitude: -119.814667 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.540029, longitude: -119.814667 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewKC: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewKC
        
        init(_ parent: MapViewKC){
            self.parent = parent
        }
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
        /*func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) ->MKAnnotationView?{
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }*/
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = "Mathewson-IGT Knowlege Center"
        annotation.subtitle = "Knowledge Center"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.543581, longitude: -119.815326 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.543581, longitude: -119.815326 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewJCSU: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewJCSU
        
        init(_ parent: MapViewJCSU){
            self.parent = parent
        }
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
        /*func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) ->MKAnnotationView?{
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }*/
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = "Joe Crowley Student Union"
        annotation.subtitle = "The Joe"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.544585, longitude: -119.815975 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.544585, longitude: -119.815975 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewFitness: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewFitness
        
        init(_ parent: MapViewFitness){
            self.parent = parent
        }
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
        /*func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) ->MKAnnotationView?{
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }*/
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = "E.L. Wiegand Center"
        annotation.subtitle = "Fitness Center"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.543524, longitude: -119.817426 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.543524, longitude: -119.817426 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewAB()
    }
}
