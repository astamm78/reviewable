//
//  OverviewViewModel.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

@Observable
class OverviewViewModel {
    var overviewResponse: OverviewResponse?
    
    /// For SwiftUI Previews Only
    /// 
    init(overviewResponse: OverviewResponse) {
        self.overviewResponse = overviewResponse
    }
    
    init() {}
    
    func loadData() async {
        guard let overviewResponse else {
            do {
                let overviewResponse = try await ListService.getOverview()
                await self.handleOverviewResponse(overviewResponse)
            } catch {
                print("DATA LOADING ERROR")
            }
            
            return
        }
    }
    
    @MainActor
    fileprivate func handleOverviewResponse(_ overviewResponse: OverviewResponse) {
        self.overviewResponse = overviewResponse
    }
}
