//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Michael Petrone on 11/18/26.
//

import SwiftUI
import ThemeKit


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    
    var body: some View {
        NavigationStack {
            //        List(scrums, id: \.title) { scrum in (w/o identifiable)
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")

            }
        }
    }
}


#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)

}
