//
//  ContentView.swift
//  CoreMLDemo
//
//  Created by Saranvignesh Soundararajan on 3/19/24.
//

import SwiftUI
import CoreML

struct ContentView: View {
    @State private var userId = 1
    @State private var restaurantId = 27739
    @State private var recentResId = 27726
    
    var body: some View {
        VStack {
            Text("User Fav Location")
                .padding()
            Button(action: {
                userFavLoc()
            }, label: {
                Text("Calculate")
            })
            .padding()
        }
        .padding()
    }
    
    func userFavLoc() {
        do {
            let config = MLModelConfiguration()
            let model = try FavoriteLocation(configuration: config)
            let prediction = try model.prediction(UserId: Int64(userId), RestaurantId: Int64(restaurantId), RecentOrderedRestaurant: Int64(recentResId))
            let userFav = prediction.LocationId
            print("User fav is \(userFav)")
        } catch {
            print("Error fetching fav location")
        }
    }
}

#Preview {
    ContentView()
}
