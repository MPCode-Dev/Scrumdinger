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
        //        List(scrums, id: \.title) { scrum in (w/o identifiable)
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)

        }
    }
}


#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)

}
