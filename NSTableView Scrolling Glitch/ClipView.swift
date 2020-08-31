//
// ClipView.swift
//
// Created by Marcel Tesch on 2020-07-31.
// Think different.
//

import Cocoa

class ClipView: NSClipView {

    var isScrollAnimationEnabled = true

    override func scroll(to point: NSPoint) {
        if isScrollAnimationEnabled {
            super.scroll(to: point)
        } else {
            setBoundsOrigin(point)

            documentView?.enclosingScrollView?.flashScrollers()
        }
    }

}
