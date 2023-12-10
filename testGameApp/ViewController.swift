////
////  ViewController.swift
////  testGameApp
////
////  Created by apple on 26/11/2023.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    
//    var boxArray:boxImages? = boxImages()
//    
//    @IBOutlet weak var imgBoxView: UIView!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        if let l = gameLevels.getLevel(level: level)
//        {
//            if l.name == "boxImages"
//            {
//                //imgBox.isHidden = false
//                imgBoxView.isHidden = false
//                boxArray = boxImagesLevel.getLevel(level: level)
//                
//                imgBox = UIImageView()
//                compareImageBox()
//                view.addSubview(imgBox!)
//                imgBox!.isUserInteractionEnabled = true
//                let panGesture = UIPanGestureRecognizer(target: self, action: #selector(didPan(_:)))
//                imgBox!.addGestureRecognizer(panGesture)
//                imgBox!.layer.borderColor = UIColor.gray.cgColor
//                imgBox!.layer.borderWidth = 1
//                
//                boxArray?.correctImages.shuffle()
//                compareImageBox()
//                var imageName:[String] = []
//                if let data = boxArray
//                {
//                    if data.correctImages.count == 0
//                    {
//                        
//                        return
//                    }
//                    imageName = data.blurImages.map{$0.name}
//                    let imgArray = data.correctImages.map{$0.name}
//                    
//                    if imgArray.count > 0
//                    {
//                        imgBox!.image = UIImage(named: imgArray[completeCount])
//                    }
//                }
//                else
//                {
//                    
//                    return
//                }
//                
//                
//                var width = imgBoxView.frame.width/3
//                if(imageName.count == 4 || imageName.count == 6)
//                {
//                    width = imgBoxView.frame.width/2
//                }
//                let heigth = width
//                var x = 0,y = -Int(heigth)
//                
//                
//                for i in 0..<imageName.count
//                {
//                    if (i % 3 == 0 && imageName.count == 9) || (i % 2 == 0 && (imageName.count == 4 || imageName.count == 6))
//                    {
//                        x = 0
//                        y = y + Int(heigth)
//                    }
//                    else
//                    {
//                        x = x + Int(width)
//                    }
//                    
//                    
//                    let imageView = UIImageView(image: UIImage(named: imageName[i]))
//                    imageView.frame = CGRect(x: x, y: y, width: Int(width), height: Int(heigth))
//                    imageView.tag = i+1
//                    imageView.layer.borderColor = UIColor.black.cgColor
//                    imageView.layer.borderWidth = 1
//                    imgBoxView.addSubview(imageView)
//                    
//                }
//            }
//        }
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    @objc func didPan(_ gesture: UIPanGestureRecognizer) {
//        
//        switch gesture.state {
//            //        case .began:
//            //            // Gesture began, you can get the starting location
//            //            let startPoint = gesture.location(in: self.view)
//            //            print("Gesture began at \(startPoint)")
//            //
//            //
//            //        case .changed:
//            //            // Gesture changed, you can get the current location
//            //            let currentPoint = gesture.location(in: self.view)
//            //            print("Current location: \(currentPoint)")
//            //
//        case .ended:
//            // Gesture ended, you can get the final location
//            let endPoint = gesture.location(in: self.imgBoxView)
//            print("Gesture ended at \(endPoint)")
//            var checkDrop = false
//            for subview in self.imgBoxView.subviews {
//                if subview.frame.contains(endPoint) {
//                    print("The gesture was located in the view \(subview.tag)")
//                    if let data = boxArray
//                    {
//                        checkDrop = true
//                        let imgKey = data.correctImages.map{$0.id}
//                        
//                        if imgKey[completeCount] == subview.tag
//                        {
//                            let imgArray = data.correctImages.map{$0.name}
//                            
//                            for v in imgBoxView.subviews
//                            {
//                                if let changeImage = v as? UIImageView, changeImage.tag == subview.tag
//                                {
//                                    changeImage.image = UIImage(named: imgArray[completeCount])
//                                }
//                            }
//                            completeCount = completeCount + 1
//                            
//                            if imgArray.count > completeCount
//                            {
//                                imgBox!.image = UIImage(named: imgArray[completeCount])
//                            }
//                            else
//                            {
//                                level = level+1
//                                completeCount = 0
//                                setUpImageView()
//                            }
//                        }
//                        else
//                        {
//                            
//                        }
//                        
//                    }
//                    
//                    break
//                }
//            }
//            compareImageBox()
//        default:
//            break
//        }
//        
//        
//        
//        let translation = gesture.translation(in: self.view)
//        
//        if let view = gesture.view {
//            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
//        }
//        
//        gesture.setTranslation(CGPoint.zero, in: self.view)
//    }
//}
