//
// ViewController.swift
//
// Created by Marcel Tesch on 2020-07-26.
// Think different.
//

import Cocoa

class ViewController: NSViewController {

    let rows: Array<String> = {
        let path = Bundle.main.path(forResource: "dinosaurs", ofType: "txt")!

        let result = try! String(contentsOfFile: path)

        return result.split(separator: "\n").map(String.init)
    }()

}

extension ViewController: NSTableViewDelegate, NSTableViewDataSource {

    func numberOfRows(in tableView: NSTableView) -> Int {
        return rows.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row index: Int) -> NSView? {
        let view = tableView.makeView(withIdentifier: .init("TableCellView"), owner: self) as? NSTableCellView

        view?.textField?.stringValue = rows[index]

        return view
    }

}
