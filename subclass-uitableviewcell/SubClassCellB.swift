//
//  SubClassCellB.swift
//  subclass-uitableviewcell
//
//  Created by Tuan Nguyen on 11/8/17.
//  Copyright © 2017 Tuan Nguyen. All rights reserved.
//

import UIKit

class SubClassCellB: CustomCell {

  var object: String? {
    didSet {
      self.myLabel.text = object
    }
  }

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    super.commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code

  }
}
