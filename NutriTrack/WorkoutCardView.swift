//
//  WorkoutCardView.swift
//  NutriTrack
//
//  Created by Nathan Albe on 4/22/24.
//

import SwiftUI

struct WorkoutCardView: View {
    var workout: Workout
        
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(workout.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                
                Text("\(workout.duration) min")
                    .padding(8)
                    .background(Color.black.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .padding(8)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(workout.name)
                    .font(.headline)
                
                Text(workout.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct Workout: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var duration: Int
    var imageName: String
}

let workouts = [
    Workout(name: "Full Body Workout", description: "Burn calories and build strength with this full-body workout.", duration: 30, imageName: "workout_image1"),
    Workout(name: "Cardio Blast", description: "Improve cardiovascular health and endurance with this high-intensity cardio workout.", duration: 45, imageName: "workout_image2"),
    Workout(name: "Core Strengthening", description: "Focus on your core muscles to improve stability and posture.", duration: 25, imageName: "workout_image3"),
    Workout(name: "Leg Day", description: "Build lower body strength and tone your legs with this intense leg workout.", duration: 40, imageName: "workout_image4"),
    Workout(name: "Yoga Flow", description: "Relax your mind and body with this soothing yoga flow sequence.", duration: 60, imageName: "workout_image5")
]

#Preview {
    WorkoutCardView(workout: workouts[0])
}
