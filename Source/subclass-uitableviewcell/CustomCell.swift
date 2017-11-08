//
//  CustomCell.swift
//  subclass-uitableviewcell
//
//  Created by Tuan Nguyen on 11/8/17.
//  Copyright © 2017 Tuan Nguyen. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

  @IBOutlet weak var myLabel: UILabel!

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }

  func commonInit() {
    let nibCell = Bundle.main.loadNibNamed("CustomCell", owner: self, options: nil)?.first as! UITableViewCell
    let nibView = nibCell.contentView
    nibView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    self.contentView.addSubview(nibView)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code

  }
}
