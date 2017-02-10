//
//  ViewController.swift
//  RXSwiftDemo
//
//  Created by 新龙科技 on 2017/2/9.
//  Copyright © 2017年 新龙科技. All rights reserved.
//

import UIKit
import RxSwift
class ViewController: UIViewController {
    let viewModel = ViewModel()
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        viewModel.getCategories()
            .subscribe({  event in
                switch event {
                case .next(let models):
                    print(models.toJSON())
                case .error(let error):
                    print(error.localizedDescription)
                case .completed:
                    return
                }
            }).addDisposableTo(disposeBag)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

