//
//  ProgressSheet.swift
//  ProgressSheet
//
//  Created by Uli Kusterer on 01/05/16.
//  Copyright © 2016 Uli Kusterer. All rights reserved.
//

import Cocoa

public class ProgressSheet: NSWindowController {
	override public var windowNibName: String? { get { return "ProgressSheet" } }
	@IBOutlet weak var messageField: NSTextField!
	@IBOutlet weak var progressBarField: NSProgressIndicator!
	
    override public func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
