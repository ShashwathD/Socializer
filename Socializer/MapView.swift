//
//  MapView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

//

import SwiftUI
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let id: String
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark: Landmark) {
        self.id = landmark.id
        self.title = landmark.name
        self.coordinate = landmark.location
    }
}

struct MapView: UIViewRepresentable {
    @Binding var landmarks: [Landmark]
    @Binding var selectedLandmark: Landmark?
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.delegate = context.coordinator
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        updateAnnotations(from: uiView)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    final class Coordinator: NSObject, MKMapViewDelegate {
        var control: MapView
        
        init(_ control: MapView) {
            self.control = control
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            var dest = view.annotation!.coordinate
            if view.annotation?.title == "Shashwath"{//This is for move a little down depending on the MKAnnotationView size
                dest.latitude = dest.latitude + 0.002
            }
            let span = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: dest, span: span)
            mapView.setRegion(region, animated: true)
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            guard let annotation = annotation as? LandmarkAnnotation else { return nil }
            let identifier = "Annotation"
            var annotationView: MKMarkerAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                annotationView?.annotation = annotation
            }
            return annotationView
        }
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
                mapView.removeAnnotations(mapView.annotations)
                var newAnnotations = landmarks.map { LandmarkAnnotation(landmark: $0) }
                if let selectedLandmark = selectedLandmark {
                        let annotation = LandmarkAnnotation(landmark: selectedLandmark)
                        newAnnotations.append(annotation)
                    }
                mapView.addAnnotations(newAnnotations)
                if let selectedAnnotation = newAnnotations.filter({ $0.id == selectedLandmark?.id }).first {
                        mapView.selectAnnotation(selectedAnnotation, animated: true)
                    } else if let selectedId = selectedLandmark?.id {
                            if let selectedLandmark = selectedLandmark {
                                    let annotation = LandmarkAnnotation(landmark: selectedLandmark)
                                    mapView.selectAnnotation(annotation, animated: true)
                                }
                        }
            }
}
