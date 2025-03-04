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
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "book")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Reviewable")
                    .font(.headline)
                
                overviewDisplay
            }
            .padding()
            .task {
                await viewModel.loadData()
            }
        }
    }
    
    @ViewBuilder
    var overviewDisplay: some View {
        if let overviewResponse = viewModel.overviewResponse {
            ScrollView {
                ForEach(overviewResponse.lists) { overviewList in
                    Section {
                        ForEach(overviewList.books) { book in
                            BookDetailsCell(bookDetails: book)
                        }
                    } header: {
                        OverviewListHeader(overviewList: overviewList)
                    }
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
        
