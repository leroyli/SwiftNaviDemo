//
//  SSBaseViewController.swift
//  SwiftNaviDemo
//
//  Created by artios on 2018/8/13.
//  Copyright © 2018年 artios. All rights reserved.
//

import UIKit

class SSBaseViewController: UIViewController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        configViews()
        
    }
    
    func configViews() {
        
        let target = self.navigationController?.interactivePopGestureRecognizer?.delegate
        
        let pan = UIPanGestureRecognizer.init(target: target, action: Selector(("handleNavigationTransition:")))
        
        pan.delegate = self
        
        self.view.addGestureRecognizer(pan)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool    {
        
        if self.childViewControllers.count == 1 {
            return false
        }
        return true
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
