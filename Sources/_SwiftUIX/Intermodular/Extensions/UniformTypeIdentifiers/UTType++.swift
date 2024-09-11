//
// Copyright (c) Vatsal Manot
//

#if os(macOS)

import SwiftUI
import UniformTypeIdentifiers

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension UTType {
    var pasteboardType: NSPasteboard.PasteboardType {
        NSPasteboard.PasteboardType(self.identifier)
    }

    init?(pasteboardType: NSPasteboard.PasteboardType) {
        guard let utType = UTType(pasteboardType.rawValue) else {
            return nil
        }
        self = utType
    }
}

#endif
