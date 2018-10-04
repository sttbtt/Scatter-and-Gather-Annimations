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
    let colors: [UIColor] = [.white, .red, .green, .blue, .orange, .yellow, .magenta, .cyan]



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
    
    // Fade Out Logo
    func fadeOutLogo() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.lambdaLogo.alpha = 0
        }, completion: nil)
    }
    
    // Fade In Logo
    func fadeInLogo() {
        UIView.animate(withDuration: 1.0, delay: 2.0, options: .curveEaseIn, animations: {
            self.lambdaLogo.alpha = 1
        }, completion: nil)
    }
    
    
    // Drop letters animations
    func dropLetters() {
        
        UIView.animate(withDuration: 2) {
            self.l.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
//        changeColor(to: colors.randomElement()!, duration: 2, options: .curveEaseIn)


        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.l.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        
        
        UIView.animate(withDuration: 2) {
            self.a.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.a.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -1100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        UIView.animate(withDuration: 2) {
            self.m.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.m.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)
        
        
        UIView.animate(withDuration: 2) {
            self.b.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.b.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)

        
        UIView.animate(withDuration: 2) {
            self.d.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.d.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: 0...600)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)

        
        UIView.animate(withDuration: 2) {
            self.aa.layer.backgroundColor = self.colors.randomElement()!.cgColor
        }
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.aa.transform = CGAffineTransform.identity.translatedBy(x: CGFloat.random(in: 0...200), y: CGFloat.random(in: 0...200)).rotated(by: CGFloat.pi / 4).scaledBy(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
            })
            
        }, completion: nil)

    }
    
   
    // Return letters animations
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
    
//    func changeColor(to color: UIColor, duration: TimeInterval, options: UIView.AnimationOptions) {
//        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
//            self.l.layer.backgroundColor = color.cgColor
//        }, completion: nil)
//    }
    
}

