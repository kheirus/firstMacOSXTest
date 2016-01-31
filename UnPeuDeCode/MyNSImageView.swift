//
//  MyNSImageView.swift
//  UnPeuDeCode
//
//  Created by kheirus on 27/01/2016.
//  Copyright © 2016 kheirus. All rights reserved.
//

import Cocoa

class MyNSImageView: NSImageView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
//    
//    override func drawRect(dirtyRect: NSRect) {
//        super.drawRect(dirtyRect)
//        // Drawing code here.
//    }
    
    @IBAction func openDocument(sender: AnyObject)
    {
        Swift.print("openDocument called")
        // NSOpenPanel
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        openPanel.beginWithCompletionHandler { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
                Swift.print(openPanel.URL)
                //let lettersPic = NSImage(contentsOfURL: openPanel.URL!);
                self.image=NSImage.init(byReferencingURL:openPanel.URL!)
            }
        }
        
    }
    
    override func awakeFromNib(){
        window?.makeFirstResponder(self)
    }

    
}
