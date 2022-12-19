// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0

import UIKit

/// Used to fill in information throughout the lifetime of an image request inside SiteImageView
struct SiteImageModel {
    /// A unique ID to tie the request to a certain image view
    let id: UUID

    /// The image type expected when making a request
    let expectedImageType: SiteImageType

    /// Always present, used to make the initial request
    let urlStringRequest: String

    /// URL can be nil in case the urlStringRequest cannot be used to build a URL
    var siteURL: URL?

    /// Domain can be nil in case we don't have a siteURL to get the domain from
    var domain: String?

    /// The favicon URL scrapped from the webpage, high resolution found at preference
    var faviconURL: URL?

    /// The fetched or generated favicon image
    var faviconImage: UIImage?

    /// The fetched hero image
    var heroImage: UIImage?
}