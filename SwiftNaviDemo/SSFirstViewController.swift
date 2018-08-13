//
//  SSFirstViewController.swift
//  SwiftNaviDemo
//
//  Created by artios on 2018/8/13.
//  Copyright © 2018年 artios. All rights reserved.
//

import UIKit

class SSFirstViewController: SSBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "first"
        self.view.backgroundColor = .white
        setupSubView()
        
    }
    
    func setupSubView () {
        let button = UIButton.init(type: .custom)
        button.backgroundColor = .red
        button.frame = CGRect.init(x: 100, y: 200, width: 100, height: 50)
        button.setTitle("push", for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(pushvc), for: .touchUpInside)
    }
    
    @objc func pushvc () {
        let vc = SSSecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
