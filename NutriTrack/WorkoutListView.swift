//
//  WorkoutListView.swift
//  NutriTrack
//
//  Created by Nathan Albe on 4/22/24.
//

import SwiftUI

struct WorkoutListView: View {
    var body: some View {
        List(workouts) { workout in
            WorkoutCardView(workout: workout)
        }
        .navigationBarTitle("Workouts", displayMode: .inline)
    }
}

#Preview {
    WorkoutListView()
}
