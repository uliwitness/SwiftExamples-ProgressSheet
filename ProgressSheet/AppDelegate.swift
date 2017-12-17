//
//  AppDelegate.swift
//  ProgressSheet
//
//  Created by Uli Kusterer on 01/05/16.
//  Copyright © 2016 Uli Kusterer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	var progressSheet: ProgressSheet?
	var timer: Timer?
	
	@objc func driveProgress( sender: Timer ) -> Void {
		progressSheet?.progressBarField.doubleValue += 10;
		
		if( progressSheet?.progressBarField.doubleValue == progressSheet?.progressBarField.maxValue )
		{
			self.window.endSheet( (progressSheet?.window)! )
		}
	}
	
	@objc func applicationDidFinishLaunching(_ aNotification: Notification) {
		progressSheet = ProgressSheet()
		self.window.beginSheet((progressSheet?.window)!, completionHandler: nil )
		progressSheet?.messageField.stringValue = "The quick brown fox jumps over the lazy dog's back where it runs and runs and runs and might never stop running if this text needs to be any longer."
		timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(driveProgress(sender:)), userInfo: nil, repeats: true)
	}

	@objc func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}


}

