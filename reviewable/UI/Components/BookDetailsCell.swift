//
//  BookDetailsCell.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import SwiftUI

struct BookDetailsCell: View {
    var bookDetails: BookDetails
    
    var body: some View {
        Text(bookDetails.title)
            .font(.title3)
    }
}

#Preview {
    BookDetailsCell(bookDetails: BookDetails.preview)
}
