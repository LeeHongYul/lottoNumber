//
//  ViewController.swift
//  lottoNumber
//
//  Created by 이홍렬 on 2023/02/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oneNumberLabel: UILabel!
    @IBOutlet weak var twoNumberLabel: UILabel!
    @IBOutlet weak var threeNumberLabel: UILabel!
    @IBOutlet weak var fourNumberLabel: UILabel!
    @IBOutlet weak var fiveNumberLabel: UILabel!
    @IBOutlet weak var sixNumberLabel: UILabel!
    
    func removeDuplication(in array: [Int]) -> [Int]{
        let set = Set(array)
        let duplicationRemovedArray = Array(set)
        return duplicationRemovedArray
    }
    
    @IBAction func rollBtn(_ sender: Any) {
        
        var rndArr = [Int]()
        
        for _ in 0...5 {
            rndArr.append(Int.random(in: 1...45))
        }
        
        for i in 0...5{
            for j in 0...5{
                if(rndArr[j] == rndArr[i]){
                    rndArr = removeDuplication(in: rndArr)
                    rndArr.append(Int.random(in: 1...45))
                }
            }
        }
        
        // 각 label에 램덤값 출력
        oneNumberLabel.text = String(rndArr[0])
        twoNumberLabel.text = String(rndArr[1])
        threeNumberLabel.text = String(rndArr[2])
        fourNumberLabel.text = String(rndArr[3])
        fiveNumberLabel.text = String(rndArr[4])
        sixNumberLabel.text = String(rndArr[5])
        
        /* 시도했지만 실패,
         for i in rndArr {
         labelArr.text! = String(rndArr[i])
         }*/
        
        func Labelingnumber(value:Int, label: UILabel){
            switch value {
            case (1...10) :
                label.textColor = UIColor.black
                label.backgroundColor = UIColor.systemYellow
                
            case (11...20) :
                label.textColor = UIColor.white
                label.backgroundColor = UIColor.systemBlue
                
            case (21...30) :
                label.backgroundColor = UIColor.red
                
            case (31...40) :
                label.textColor = UIColor.white
                label.backgroundColor = UIColor.black
                
            case (41...45) :
                label.backgroundColor = UIColor.green
                
            default:
                print("error")
            }
            
        }
        
        var labelArr = [oneNumberLabel,
                        twoNumberLabel,
                        threeNumberLabel,
                        fourNumberLabel,
                        fiveNumberLabel,
                        sixNumberLabel]
        
        for i in 0...5 {
            Labelingnumber(value: rndArr[i], label: labelArr[i]!)
        }
        
        
        
    }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        //label의 cornerRadius사용해서 둥긍 공 모양으로 생성
        oneNumberLabel.layer.cornerRadius = 15
        twoNumberLabel.layer.cornerRadius = 15
        threeNumberLabel.layer.cornerRadius = 15
        fourNumberLabel.layer.cornerRadius = 15
        fiveNumberLabel.layer.cornerRadius = 15
        sixNumberLabel.layer.cornerRadius = 15
        
    }
    
}

