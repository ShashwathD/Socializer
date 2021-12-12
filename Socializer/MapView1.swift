
//MapView.swift
  

//Created by Shashwath Dinesh on 12/11/21.



import SwiftUI
import MapKit

struct MapView1: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
               func makeUIView(context: Context) -> MKMapView {
                   MKMapView(frame: .zero)
               }

               func updateUIView(_ view: MKMapView, context: Context) {
                   let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
                   let region = MKCoordinateRegion(center: coordinate, span: span)
                   view.setRegion(region, animated: true)
               }
           }
