//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Low Jung Xuan on 12/02/2022.
//  like recyclerview adapter

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData:ModelData
    @State private var showFavouritesOnly=false
    var filteredLandmarks:[Landmark]{
        modelData.landmarks.filter{landmark in
            (!showFavouritesOnly||landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {//view mode
            List{
                Toggle(isOn: $showFavouritesOnly){
                    Text("Favourite only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {//navigation link to the related detail
                        LandmarkDetail(landmark:landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
