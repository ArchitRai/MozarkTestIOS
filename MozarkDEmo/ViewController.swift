//
//  ViewController.swift
//  MozarkDEmo
//
//  Created by Archit Rai Saxena on 21/09/20.
//  Copyright © 2020 Archit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vw_touch: UIView!
        {  didSet {
             self.vw_touch.backgroundColor = .white
    }
    }
    
    var vwarr = [UIView]()
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //MARK: create view method
    func createView(x:CGFloat,y:CGFloat)
    {
        let vw = UIView.init(frame: CGRect.init(x: x, y: y, width: 400, height: 400))
        vw.center = CGPoint.init(x: x, y: y)
        vw.backgroundColor = .red
        vw.layer.borderWidth = 1.0
        vw.layer.borderColor = UIColor.black.cgColor
         vwarr.append(vw)
        self.vw_touch.addSubview(vw)
    }
    func showError()
    {
        let alert = UIAlertController(title: "Mozark!", message: "Please tap outside the box.", preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }
    }
}
extension ViewController
{
    //Get touch event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        let touch = touches.first!
        let location = touch.location(in: self.vw_touch) //get touch location
        
        //Condition for cancel tap gesture in added view
        for vws in vwarr
               {
                if touch.view == vws {
                    showError()
                return
                }
        }
        print(location)
    //call add new view method
        self.createView(x: location.x, y: location.y)
        
    }
}
