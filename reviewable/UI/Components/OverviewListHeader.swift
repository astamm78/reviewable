//
//  OverviewListHeader.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import SwiftUI

struct OverviewListHeader: View {
    var overviewList: OverviewList
    
    var body: some View {
        VStack(spacing: 12) {
            Text(overviewList.displayName)
                .font(.title2)
                .foregroundColor(Color.background)
            
            Text("\(overviewList.books.count) Books")
                .font(.subheadline)

            
            Rectangle()
                .frame(height: 0.75)
                .foregroundStyle(Color.background)
                .padding(.horizontal, 20)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    OverviewListHeader(
        overviewList: OverviewList.preview
    )
}
