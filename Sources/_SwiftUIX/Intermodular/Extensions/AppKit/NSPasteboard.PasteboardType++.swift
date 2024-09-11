//
// Copyright (c) Vatsal Manot
//

#if os(macOS)

import SwiftUI
import UniformTypeIdentifiers

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension NSPasteboard.PasteboardType {
    init?(utType: UTType) {
        self.init(utType.identifier)
    }
    
    var utType: UTType? {
        UTType(self.rawValue)
    }
}

#endif
