//
//  ViewController.swift
//  LabelCreate
//
//  Created by Dilara Elçioğlu on 19.12.2022.
//

import UIKit
import SnapKit

class LabelCreate: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()
             setupUI()
        }
    
        
        func setupUI() {
            
            lazy var ortUstLabel = UILabel()
            ortUstLabel.text = "Orta-Ust"
            ortUstLabel.textAlignment = .center
            //ortUstLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            //ortUstLabel.numberOfLines = 0
            ortUstLabel.textColor = .white
            ortUstLabel.backgroundColor = .blue
            ortUstLabel.font = UIFont.systemFont(ofSize: 10, weight: .regular)
            view.addSubview(ortUstLabel)
            ortUstLabel.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(60)
                make.centerX.equalToSuperview()
            }
            
            lazy var sagAltLabel = UILabel()
            sagAltLabel.text = "Sag-Alt"
            sagAltLabel.textAlignment = .center
            //sagAltLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            //ortUstLabel.numberOfLines = 0
            sagAltLabel.textColor = .white
            sagAltLabel.backgroundColor = .red
            sagAltLabel.font = UIFont.systemFont(ofSize: 10, weight: .regular)
            view.addSubview(sagAltLabel)
            sagAltLabel.snp.makeConstraints { make in
                make.bottom.equalToSuperview().offset(-20)
                make.trailing.equalToSuperview().offset(-20)
            }
            
            lazy var merkezLabel = UILabel()
            merkezLabel.text = "Merkez"
            merkezLabel.textAlignment = .center
            merkezLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            //ortUstLabel.numberOfLines = 0
            merkezLabel.textColor = .white
            merkezLabel.backgroundColor = .black
            merkezLabel.font = UIFont.systemFont(ofSize: 10, weight: .regular)
            view.addSubview(merkezLabel)
            merkezLabel.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview()
            }
            
            lazy var yuksekGenis = UILabel()
            yuksekGenis.text = "Yuksek-Geniş"
            yuksekGenis.textAlignment = .center
            yuksekGenis.lineBreakMode = NSLineBreakMode.byWordWrapping
            //ortUstLabel.numberOfLines = 0
            yuksekGenis.textColor = .white
            yuksekGenis.backgroundColor = .gray
            yuksekGenis.font = UIFont.systemFont(ofSize: 10, weight: .regular)
            view.addSubview(yuksekGenis)
            yuksekGenis.snp.makeConstraints { make in
                make.bottom.equalTo(sagAltLabel)
                make.trailing.equalTo(sagAltLabel.snp.leading).offset(-40)
                make.height.equalTo(view.snp.height).multipliedBy(0.3)
                make.width.equalTo(view.snp.width).multipliedBy(0.25)

                
            }
        }
}

