//
//  CardView.swift
//  Scrumdinger
//
//  Created by Michael Petrone on 10/28/26.
//

import Foundation
import SwiftUI
import ThemeKit


struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font( .headline)
                .accessibilityAddTraits(.isHeader)

            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    //.padding(.leading, 20)
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")

            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)

    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
}
