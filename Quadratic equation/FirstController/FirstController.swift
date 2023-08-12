//
//  FirstController.swift
//  Quadratic equation
//
//  Created by user on 11.08.2023.
//

import Cocoa

class FirstController: NSWindowController {

    @IBOutlet weak var sampleTitleTF: NSTextField!
    @IBOutlet weak var solutionsTitleTF: NSTextField!
    
    @IBOutlet weak var x1AnswerTF: NSTextField!
    @IBOutlet weak var x2AnswerTF: NSTextField!
   
    @IBOutlet weak var aInputTF: NSTextField!
    @IBOutlet weak var bInputTF: NSTextField!
    @IBOutlet weak var cInputTF: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        window?.backgroundColor = NSColor.black
        window?.title = "Quadratic equation"
        
        aInputTF.delegate = self
        bInputTF.delegate = self
        cInputTF.delegate = self
    }
    
    func ffff() {
        guard let a = Double(aInputTF.stringValue),
              let b = Double(bInputTF.stringValue),
              let c = Double(cInputTF.stringValue) else { return }
        
        let bSquared = b * b
        let discriminant = bSquared - (4 * a * c)
        let isImaginary = discriminant < 0
        let discrimimantAbsSqrt = sqrt(fabs(discriminant))

        if isImaginary {
            print("X = (\(-b) + \(discrimimantAbsSqrt)i)/\(2*a) & (\(-b) - \(discrimimantAbsSqrt)i)/\(2*a)")
            let ans1 = -b + (discrimimantAbsSqrt / (2 * a))
            let ans2 = -b - (discrimimantAbsSqrt / (2 * a))
            x1AnswerTF.stringValue = "x1 = \(ans1)"
            x2AnswerTF.stringValue = "x2 = \(ans2)"
        } else {
            let topFormula = -b + discrimimantAbsSqrt
            let bottomFormula = 2 * a
            let totalX = topFormula / bottomFormula

            let topFormula2 = -b - discrimimantAbsSqrt
            let totalX2 = topFormula2 / bottomFormula

            print("X = \(totalX) & \(totalX2)")
            x1AnswerTF.stringValue = "x1 = \(totalX)"
            x2AnswerTF.stringValue = "x2 = \(totalX2)"
//                .styleHashtags(Attrs().font(.boldSystemFont(ofSize: 45)))
//                    .styleMentions(Attrs().foregroundColor(.red))
//                    .attributedString
        }
    }
  
}

extension FirstController: NSTextFieldDelegate {
    
    func controlTextDidChange(_ obj: Notification) {
        if aInputTF != nil && !aInputTF.stringValue.isEmpty && bInputTF != nil && !bInputTF.stringValue.isEmpty && cInputTF != nil && !cInputTF.stringValue.isEmpty {
            ffff()
        }
    }
}
