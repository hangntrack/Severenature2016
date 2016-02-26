//
//  FirstViewController.swift
//  SevereNature2016
//
//  Created by Christopher Afolabi on 2/25/16.
//  Copyright © 2016 Christopher Afolabi. All rights reserved.
//

import UIKit

class FirstViewController:UIViewController, UITextFieldDelegate, UITextViewDelegate , UIPickerViewDelegate, UIImagePickerControllerDelegate , UIScrollViewDelegate{
    @IBOutlet var home: UIView!
    @IBOutlet weak var scrollview: UIScrollView!
    var width = CGFloat()
    var height = CGFloat()
    var imageone = UIImageView()
     var imagetwo = UIImageView()
     var imagethree = UIImageView()
     var header = UIImageView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = UIColor.blackColor()

        let scrn = UIScreen.mainScreen().bounds
        width = scrn.size.width
        height = scrn.size.height
        scrollview.delegate = self
        scrollview.contentSize = CGSizeMake(width, height + 700)
        scrollview.alwaysBounceHorizontal = false;
        scrollview.bounces = false;
        //------------------------------------------------------------------------------------------
        //INITIALIZE CONTENT
        
        //Header
        header = UIImageView(frame: CGRectMake(0, 0, width, 60))
        header.image = UIImage(named: "header")
        header.contentMode = UIViewContentMode.ScaleAspectFill
        header.clipsToBounds = true
        
        
        //ImageOne
        imageone = UIImageView(frame: CGRectMake(0, 0, width, 500))
        imageone.image = UIImage(named: "imageone")
        imageone.contentMode = UIViewContentMode.ScaleAspectFill
        imageone.clipsToBounds = true
        
        //Imagetwo
      
        imagetwo = UIImageView(frame: CGRectMake(0, 500, width/2, width/2))
        imagetwo.image = UIImage(named: "imagetwo")
        imagetwo.contentMode = UIViewContentMode.ScaleAspectFill
        imagetwo.clipsToBounds = true
        
         //Imagethree
        imagethree = UIImageView(frame: CGRectMake(width/2, 500, width/2, width/2))
        imagethree.image = UIImage(named: "imagethree")
        imagethree.contentMode = UIViewContentMode.ScaleAspectFill
        imagethree.clipsToBounds = true
        
        
        
        //------------------------------------------------------------------------------------------

        //ADD TO VIEW
        
        home.addSubview(scrollview)
        scrollview.addSubview(imageone)
         scrollview.addSubview(imagetwo)
         scrollview.addSubview(imagethree)
         home.addSubview(header)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

