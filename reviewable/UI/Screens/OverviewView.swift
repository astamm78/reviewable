//
//  OverviewView.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import SwiftUI

struct OverviewView: View {
    var viewModel: OverviewViewModel = OverviewViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Reviewable")
            
            overviewDisplay
        }
        .padding()
        .task {
            await viewModel.loadData()
        }
    }
    
    @ViewBuilder
    var overviewDisplay: some View {
        if let overviewResponse = viewModel.overviewResponse {
            VStack {
                Text("Overview Loaded")
                
                Text("\(overviewResponse.numResults) Books")
                
                ForEach(overviewResponse.lists) { overviewList in
                    Text(overviewList.displayName)
                }
            }
        }
    }
}

#Preview {
    let overviewResponse = OverviewResponse.preview
    let viewModel = OverviewViewModel(overviewResponse: overviewResponse)
    
    return OverviewView(viewModel: viewModel)
}
        
