//
//  OnboardingCell.swift
//  CarbonSignup
//
//  Created by Decagon on 23/08/2021.
//

import UIKit
import Lottie

class OnboardingCell: UICollectionViewCell {
  
  var animationView: AnimationView!
  private func setupSimpleAnimation() {
    animationView = .init(name: "carbon")
    animationView.frame = contentView.bounds
    
    animationView.contentMode = .scaleAspectFit
    animationView.loopMode = .loop
    animationView.animationSpeed = 0.5
    
    addSubview(animationView)
    
    animationView.play()
  }
  
  var page: PageModel? {
    didSet {
      guard let page = page else { return }
      let color = UIColor(white: 0.2, alpha: 1)
      let attributedString = NSMutableAttributedString(string: page.title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.medium), NSAttributedString.Key.foregroundColor: color])
      
      attributedString.append(NSAttributedString(string: "\n\n\(page.message)", attributes: [
                                                  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular), NSAttributedString.Key.foregroundColor: color]))
      
      let length = attributedString.string.count
      let paragraphStyle = NSMutableParagraphStyle()
      paragraphStyle.alignment = .center
      
      attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
      
      textView.attributedText = attributedString
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setUpViews()
    
  }
  
  let textView: UITextView = {
    let tv = UITextView()
    tv.text = "SAMPLE TEXT HERE"
    tv.textAlignment = .center
    tv.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0 )
    tv.isEditable = false
    return tv
  }()
  
  func setUpViews() {
    backgroundColor = .white
    addSubview(textView)
    setupSimpleAnimation()
    
    textView.anchorWithConstantsToTop(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 40, bottomConstant: 0, rightConstant: 40)
    textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
    
    
    animationView?.anchorToTop(top: topAnchor, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
