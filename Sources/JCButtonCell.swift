//
//  JCButtonCell.swift
//  XLPagerTabStrip
//
//  Created by 長尾聡一郎 on 2019/08/04.
//

import UIKit

@IBDesignable class JCButtonCell: ButtonBarViewCell {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countView: UIView!
    
    var count: Int = 0 {
        didSet {
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [.curveEaseInOut, .allowUserInteraction], animations: {
                
                if self.count < 1 {
                    self.countView.isHidden = true
                    self.countLabel.isHidden = true
                } else {
                    self.countView.isHidden = false
                    self.countLabel.isHidden = false
                }
            }, completion: nil)
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.countView?.layer.cornerRadius = self.cornerRadius
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCountLabel(to count: Int?){
        self.count = count ?? 0
    }
}
