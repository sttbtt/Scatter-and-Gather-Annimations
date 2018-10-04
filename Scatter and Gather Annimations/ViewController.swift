//
//  ViewController.swift
//  Scatter and Gather Annimations
//
//  Created by Scott Bennett on 10/3/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lambdaLogo: UIView!
    @IBOutlet weak var l: UILabel!
    @IBOutlet weak var a: UILabel!
    @IBOutlet weak var m: UILabel!
    @IBOutlet weak var b: UILabel!
    @IBOutlet weak var d: UILabel!
    @IBOutlet weak var aa: UILabel!
    
    
    
    var shouldScramble: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func shouldScramble(_ sender: Any) {
        shouldScramble.toggle()
        
        if shouldScramble {
            dropLetters()
            fadeOutLogo()
        } else {
            fadeInLogo()
            returnLetters()
        }
    }
    
    func fadeOutLogo() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.lambdaLogo.alpha = 0
        }, completion: nil)
        
    }
    
    func fadeInLogo() {
        UIView.animate(withDuration: 1.0, delay: 2.0, options: .curveEaseIn, animations: {
            self.lambdaLogo.alpha = 1
        }, completion: nil)
        
    }
    
    func dropLetters() {
        

        UIView.animate(withDuration: 2) {
            self.l.layer.backgroundColor = UIColor.blue.cgColor
            self.l.textColor = .red
        }


        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.l.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        
        
        UIView.animate(withDuration: 2) {
            self.a.layer.backgroundColor = UIColor.red.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.a.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -1100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        UIView.animate(withDuration: 2) {
            self.m.layer.backgroundColor = UIColor.orange.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.m.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        
        UIView.animate(withDuration: 2) {
            self.b.layer.backgroundColor = UIColor.magenta.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.b.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)

        
        UIView.animate(withDuration: 2) {
            self.d.layer.backgroundColor = UIColor.cyan.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.d.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)

        
        UIView.animate(withDuration: 2) {
            self.aa.layer.backgroundColor = UIColor.yellow.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.aa.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: 0...200), y: CGFloat.random(in: 0...200)).rotated(by: CGFloat.pi / 4).scaledBy(x: -1, y: 2)
            })
            
        }, completion: nil)

        

    }
    
    func returnLetters() {
        
        UIView.animate(withDuration: 2) {
            self.l.layer.backgroundColor = UIColor.clear.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.l.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
            }, completion: nil)
            
        UIView.animate(withDuration: 2) {
            self.a.layer.backgroundColor = UIColor.clear.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.a.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
        }, completion: nil)
        
            UIView.animate(withDuration: 2) {
                self.m.layer.backgroundColor = UIColor.clear.cgColor
            }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.m.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
        }, completion: nil)
        
    
        UIView.animate(withDuration: 2) {
            self.b.layer.backgroundColor = UIColor.clear.cgColor
        }
    
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.b.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
        }, completion: nil)
    
        UIView.animate(withDuration: 2) {
            self.d.layer.backgroundColor = UIColor.clear.cgColor
        }
    
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.d.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
        }, completion: nil)
    
        UIView.animate(withDuration: 2) {
            self.aa.layer.backgroundColor = UIColor.clear.cgColor
        }
    
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.aa.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).rotated(by: 0).scaledBy(x: 1, y: 1)
            })
            
        }, completion: nil)

    }
    
}

