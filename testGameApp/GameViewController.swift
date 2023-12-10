//
//  GameViewController.swift
//  testGameApp
//
//  Created by apple on 26/11/2023.
//

import UIKit

class ViewController: UIViewController {

    var boxArray: boxImages?
        var imgBox: UIImageView?
        var compareImageView: UIImageView?
        var completeCount = 0
        var level = 1 // You can set the initial level here

    
    var pickedImageView: UIImageView?
    var isPanningImgBox = false
    
    @IBOutlet weak var imgBoxView: UIView!

    @IBOutlet weak var compareImagesView: UIView!

      override func viewDidLoad() {
          super.viewDidLoad()
          setUpImageView()
          setUpCompareImageView()
      }

      func setUpImageView() {
          guard let l = boxImagesLevel.getLevel(level: level) else {
              return
          }

          imgBoxView.isHidden = false
          boxArray = l

          imgBox = UIImageView()
          compareImageBox()
          view.addSubview(imgBox!)
          imgBox!.isUserInteractionEnabled = true
          imgBox!.layer.borderColor = UIColor.gray.cgColor
          imgBox!.layer.borderWidth = 1

          boxArray?.correctImages.shuffle()
          compareImageBox()
          var imageName: [String] = []
          if let data = boxArray {
              if data.correctImages.count == 0 {
                  return
              }
              imageName = data.blurImages.map { $0.name }
              let imgArray = data.correctImages.map { $0.name }

              if imgArray.count > 0 {
                  imgBox!.image = UIImage(named: imgArray[completeCount])
              }
          } else {
              return
          }

          var width = imgBoxView.frame.width / 3
          if imageName.count == 4 || imageName.count == 6 {
              width = imgBoxView.frame.width / 2
          }
          let height = width
          var x = 0, y = -Int(height)

          for i in 0..<imageName.count {
              if (i % 3 == 0 && imageName.count == 9) || (i % 2 == 0 && (imageName.count == 4 || imageName.count == 6)) {
                  x = 0
                  y = y + Int(height)
              } else {
                  x = x + Int(width)
              }

              let imageView = UIImageView(image: UIImage(named: imageName[i]))
              imageView.frame = CGRect(x: x, y: y, width: Int(width), height: Int(height))
              imageView.tag = i + 1
              imageView.layer.borderColor = UIColor.black.cgColor
              imageView.layer.borderWidth = 1
              imgBoxView.addSubview(imageView)
          }
      }

    func setUpCompareImageView() {
           compareImageView = UIImageView()
           compareImageView?.frame = compareImagesView.bounds
           compareImagesView.addSubview(compareImageView!)
           compareImageView?.contentMode = .scaleAspectFit

           let panGesture = UIPanGestureRecognizer(target: self, action: #selector(didPanCompareImage(_:)))
           compareImageView?.isUserInteractionEnabled = true
           compareImageView?.addGestureRecognizer(panGesture)

           compareImageBox()
       }
    
    @objc func didPanCompareImage(_ gesture: UIPanGestureRecognizer) {
        guard let compareImageView = compareImageView else {
            return
        }

        switch gesture.state {
        case .began:
            // Create a new UIImageView to represent the picked image
            pickedImageView = UIImageView(image: compareImageView.image)
            pickedImageView?.frame = compareImageView.frame
            pickedImageView?.contentMode = .scaleAspectFit
            view.addSubview(pickedImageView!)
            pickedImageView?.center = gesture.location(in: self.view)
            compareImageView.isHidden = true

        case .changed:
            // Handling the pan gesture for the pickedImageView
            guard let pickedImageView = pickedImageView else {
                return
            }

            let translation = gesture.translation(in: self.view)
            pickedImageView.center = CGPoint(x: pickedImageView.center.x + translation.x, y: pickedImageView.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)

        case .ended:
            // Check if the gesture ended within the imgBoxView
            let endPoint = gesture.location(in: self.imgBoxView)

            // Check if the gesture ended within the imgBoxView
            if self.imgBoxView.frame.contains(endPoint) {
                // Your existing logic for handling the drop goes here
                var checkDrop = false
                for subview in self.imgBoxView.subviews {
                    if subview.frame.contains(endPoint) {
                        // Your existing logic for handling the drop goes here
                        if let data = boxArray {
                            checkDrop = true
                            let imgKey = data.correctImages.map{$0.id}

                            if imgKey[completeCount] == subview.tag {
                                let imgArray = data.correctImages.map{$0.name}

                                for v in imgBoxView.subviews {
                                    if let changeImage = v as? UIImageView, changeImage.tag == subview.tag {
                                        changeImage.image = UIImage(named: imgArray[completeCount])
                                    }
                                }
                                completeCount = completeCount + 1

                                if imgArray.count > completeCount {
                                    imgBox?.image = UIImage(named: imgArray[completeCount])
                                } else {
                                    level = level + 1
                                    completeCount = 0
                                    setUpImageView()
                                }
                            } else {
                                // Handle incorrect drop
                            }
                        }

                        break
                    }
                }
                compareImageBox()
            }

            // Remove the pickedImageView
            pickedImageView?.removeFromSuperview()
            pickedImageView = nil
            compareImageView.isHidden = false

        default:
            break
        }
    }


      func compareImageBox() {
          guard let data = boxArray else {
              return
          }
          let compareImages = data.correctImages.map { $0.name }

          if completeCount < compareImages.count {
              compareImageView?.image = UIImage(named: compareImages[completeCount])
          }
      }
  }
