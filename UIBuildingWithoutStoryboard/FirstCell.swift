//
//  FirstCell.swift
//  UIBuildingWithoutStoryboard
//
//  Created by ユーザー１ on 2019/02/25.
//  Copyright © 2019 Masaya Ujihara. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
  let sampleText = UILabel()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String!){
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    sampleText.frame = CGRect(x:0, y:0, width: 300, height:60)
    sampleText.text = "Title"
    //title.lineBreakMode = .byCharWrapping
    sampleText.font = UIFont.boldSystemFont(ofSize: 15)
    sampleText.numberOfLines = 0
    sampleText.textAlignment = NSTextAlignment.center
    self.addSubview(sampleText)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
  }
}

