//
//  MapView.swift
//  binsInSG
//
//  Created by Tham En Jie on 15/8/22.
//

import SwiftUI
import MapKit

struct BinMapView: View {
    @State var openTop: Bool = false
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198),
        latitudinalMeters: 500,
        longitudinalMeters: 500)
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow))
            VStack {
                Button {
                    withAnimation {
                        openTop.toggle()
                    }
                } label: {
                    ZStack {
                        Text("Nearby Bins and Filters")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                        HStack {
                            Spacer()
                            Image(systemName: "chevron.up")
                                .foregroundColor(.black) // change
                                .rotationEffect(Angle(degrees: openTop ? 180 : 0))
                        }
                    }
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(7)
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        BinMapView()
    }
}
