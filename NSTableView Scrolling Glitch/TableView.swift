//
// TableView.swift
//
// Created by Marcel Tesch on 2020-07-31.
// Think different.
//

import Cocoa

class TableView: NSTableView {

    private var clipView: ClipView? { enclosingScrollView?.contentView as? ClipView }

    override func keyDown(with event: NSEvent) {
        if [125, 126].contains(event.keyCode), event.modifierFlags.intersection([.option, .shift]).isEmpty {
            clipView?.isScrollAnimationEnabled = false

            super.keyDown(with: event)

            clipView?.isScrollAnimationEnabled = true
        } else {
            super.keyDown(with: event)
        }
    }

}
