//
//  NYTList.swift
//  reviewable
//
//  Created by Andrew Stamm on 3/3/25.
//

import Foundation

enum NYTList: String {
    case combinedPrintEbookFiction = "combined-print-and-e-book-fiction"
    case combinedPrintEbookNonfiction = "combined-print-and-e-book-nonfiction"
    case hardcoverFiction = "hardcover-fiction"
    case hardcoverNonfiction = "hardcover-nonfiction"
    case tradeFictionPaperback = "trade-fiction-paperback"
    case massMarketFiction = "mass-market-paperback"
    case paperbackNonfiction = "paperback-nonfiction"
}



//
//    {
//      "list_name": "Hardcover Graphic Books",
//      "display_name": "Hardcover Graphic Books",
//      "list_name_encoded": "hardcover-graphic-books",
//      "oldest_published_date": "2009-03-15",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Paperback Graphic Books",
//      "display_name": "Paperback Graphic Books",
//      "list_name_encoded": "paperback-graphic-books",
//      "oldest_published_date": "2009-03-15",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Manga",
//      "display_name": "Manga",
//      "list_name_encoded": "manga",
//      "oldest_published_date": "2009-03-15",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Combined Print Fiction",
//      "display_name": "Combined Hardcover & Paperback Fiction",
//      "list_name_encoded": "combined-print-fiction",
//      "oldest_published_date": "2011-02-13",
//      "newest_published_date": "2013-05-12",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Combined Print Nonfiction",
//      "display_name": "Combined Hardcover & Paperback Nonfiction",
//      "list_name_encoded": "combined-print-nonfiction",
//      "oldest_published_date": "2011-02-13",
//      "newest_published_date": "2013-05-12",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Chapter Books",
//      "display_name": "Children’s Chapter Books",
//      "list_name_encoded": "chapter-books",
//      "oldest_published_date": "2008-06-08",
//      "newest_published_date": "2012-12-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Childrens Middle Grade",
//      "display_name": "Children’s Middle Grade",
//      "list_name_encoded": "childrens-middle-grade",
//      "oldest_published_date": "2012-12-16",
//      "newest_published_date": "2015-08-23",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Childrens Middle Grade E-Book",
//      "display_name": "Children’s Middle Grade E-Book",
//      "list_name_encoded": "childrens-middle-grade-e-book",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Childrens Middle Grade Hardcover",
//      "display_name": "Children’s Middle Grade Hardcover",
//      "list_name_encoded": "childrens-middle-grade-hardcover",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2025-03-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Childrens Middle Grade Paperback",
//      "display_name": "Children’s Middle Grade Paperback",
//      "list_name_encoded": "childrens-middle-grade-paperback",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Paperback Books",
//      "display_name": "Children’s Paperback Books",
//      "list_name_encoded": "paperback-books",
//      "oldest_published_date": "2008-06-08",
//      "newest_published_date": "2012-12-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Picture Books",
//      "display_name": "Children’s Picture Books",
//      "list_name_encoded": "picture-books",
//      "oldest_published_date": "2008-06-08",
//      "newest_published_date": "2025-03-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Series Books",
//      "display_name": "Children’s & Young Adult Series",
//      "list_name_encoded": "series-books",
//      "oldest_published_date": "2008-06-08",
//      "newest_published_date": "2025-03-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Young Adult",
//      "display_name": "Young Adult",
//      "list_name_encoded": "young-adult",
//      "oldest_published_date": "2012-12-16",
//      "newest_published_date": "2015-08-23",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Young Adult E-Book",
//      "display_name": "Young Adult E-Book",
//      "list_name_encoded": "young-adult-e-book",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Young Adult Hardcover",
//      "display_name": "Young Adult Hardcover",
//      "list_name_encoded": "young-adult-hardcover",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2025-03-09",
//      "updated": "WEEKLY"
//    },
//    {
//      "list_name": "Young Adult Paperback",
//      "display_name": "Young Adult Paperback",
//      "list_name_encoded": "young-adult-paperback",
//      "oldest_published_date": "2015-08-30",
//      "newest_published_date": "2017-01-29",
//      "updated": "WEEKLY"
//    },
//    
