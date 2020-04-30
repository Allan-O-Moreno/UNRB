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

struct MapViewDMSC: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewDMSC
        
        init(_ parent: MapViewDMSC){
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
        annotation.title = "Davidson Math and Science Center"
        annotation.subtitle = "DMSC"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.538989, longitude: -119.812419 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.538989, longitude: -119.812419 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewEJCH: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewEJCH
        
        init(_ parent: MapViewEJCH){
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
        annotation.title = "Edmund J. Cain Hall"
        annotation.subtitle = "Edmund"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.542208, longitude: -119.813792 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.542208, longitude: -119.813792 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewMSS: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewMSS
        
        init(_ parent: MapViewMSS){
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
        annotation.title = "Mack Social Sciences"
        annotation.subtitle = "MSS"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.540771, longitude: -119.815269 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.540771, longitude: -119.815269 )
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

struct MapViewPSAC: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewPSAC
        
        init(_ parent: MapViewPSAC){
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
        annotation.title = "Scrugham Engineering and Mines"
        annotation.subtitle = "SEM"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.539859, longitude: -119.815662 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.539859, longitude: -119.815662 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewSEM: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewSEM
        
        init(_ parent: MapViewSEM){
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
        annotation.title = "Scrugham Engineering and Mines"
        annotation.subtitle = "SEM"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.539725, longitude: -119.813627 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.539725, longitude: -119.813627 )
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region  = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapViewEWFC: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewEWFC
        
        init(_ parent: MapViewEWFC){
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

struct MapViewWRB: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewWRB
        
        init(_ parent: MapViewWRB){
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
        annotation.title = "William Raggio Building"
        annotation.subtitle = "WRB"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 39.542044, longitude: -119.814977 )
        mapView.addAnnotation(annotation)
        
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let coords = CLLocationCoordinate2D(latitude: 39.542044, longitude: -119.814977 )
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
