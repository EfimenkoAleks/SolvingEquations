//
//  FirstController.swift
//  Quadratic equation
//
//  Created by user on 11.08.2023.
//

import Cocoa

class FirstController: NSWindowController {

    @IBOutlet private weak var sampleTitleTF: NSTextField!
    @IBOutlet private weak var solutionsTitleTF: NSTextField!
    
    @IBOutlet private weak var x1AnswerTF: NSTextField!
    @IBOutlet private weak var x2AnswerTF: NSTextField!
   
    @IBOutlet private weak var aInputTF: NSTextField!
    @IBOutlet private weak var bInputTF: NSTextField!
    @IBOutlet private weak var cInputTF: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        window?.backgroundColor = NSColor.black
        window?.title = "Quadratic equation"
        
        aInputTF.delegate = self
        bInputTF.delegate = self
        cInputTF.delegate = self
    }
    
    private func calculation() {
        guard let a = Int32(aInputTF.stringValue),
              let b = Int32(bInputTF.stringValue),
              let c = Int32(cInputTF.stringValue) else { return }
        
        let qud = QuadraticEquation()
        let rez = qud.quadraticEquation(a, secondnumber: b, thirdnumber: c)
        x1AnswerTF.stringValue = "x1 = \(rez?["first"] as! String)"
        x2AnswerTF.stringValue = "x2 = \(rez?["second"] as! String)"
    }
}

extension FirstController: NSTextFieldDelegate {
    
    func controlTextDidChange(_ obj: Notification) {
        if aInputTF != nil && !aInputTF.stringValue.isEmpty && bInputTF != nil && !bInputTF.stringValue.isEmpty && cInputTF != nil && !cInputTF.stringValue.isEmpty {
            calculation()
        }
    }
}
