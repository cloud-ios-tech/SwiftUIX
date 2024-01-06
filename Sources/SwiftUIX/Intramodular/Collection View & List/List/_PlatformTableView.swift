//
// Copyright (c) Vatsal Manot
//

#if os(macOS)

import AppKit
import Swift
import SwiftUI

final class _PlatformTableView<Configuration: _CocoaListConfigurationType>: NSTableView {
    let listRepresentable: _CocoaList<Configuration>.Coordinator
    
    override var rowHeight: CGFloat {
        get {
            super.rowHeight
        } set {
            super.rowHeight = newValue
        }
    }
    
    init(listRepresentable: _CocoaList<Configuration>.Coordinator) {
        UserDefaults.standard.set(false, forKey: "NSTableViewCanEstimateRowHeights")
        
        self.listRepresentable = listRepresentable
        
        super.init(frame: .zero)
        
        self.rowSizeStyle = .custom
        self.cornerView = nil
        self.usesAutomaticRowHeights = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func resizeSubviews(
        withOldSize oldSize: NSSize
    ) {
        super.resizeSubviews(withOldSize: oldSize)
    }
    
    override func invalidateIntrinsicContentSize() {
        
    }
    
    override func prepareContent(in rect: NSRect) {
        listRepresentable.stateFlags.insert(.isNSTableViewPreparingContent)
        
        defer {
            listRepresentable.stateFlags.remove(.isNSTableViewPreparingContent)
        }
        
        super.prepareContent(in: visibleRect)
    }
    
    override func noteHeightOfRows(
        withIndexesChanged indexSet: IndexSet
    ) {
        super.noteHeightOfRows(withIndexesChanged: indexSet)
    }
}

#endif
