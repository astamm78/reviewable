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
    }
}

#Preview {
    BookDetailsCell(bookDetails: BookDetails.preview)
}
