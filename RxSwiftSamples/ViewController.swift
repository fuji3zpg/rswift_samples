//
//  ViewController.swift
//  RxSwiftSamples
//
//  Created by fuji3zpg on 2019/02/20.
//  Copyright © 2019 hoge. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    let label1 = UILabel()
    let textField = UITextView()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        label1.frame = CGRect(x: 50, y: 100, width: 300, height: 50)
        label1.backgroundColor = UIColor.gray
        view.addSubview(label1)

        textField.frame = CGRect(x: 50, y: 250, width: 300, height: 50)
        textField.backgroundColor = UIColor.cyan
        textField.text = "test111"
        view.addSubview(textField)

        textField.rx.text
            .map {"「\($0!)」"}
            .bind(to: label1.rx.text)
            .disposed(by: disposeBag)
    }


}

