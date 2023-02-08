//
//  ViewController.swift
//  lottoNumber
//
//  Created by 이홍렬 on 2023/02/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var secondNumberLabel: UILabel!

    @IBOutlet weak var thirdNumberLabel: UILabel!
    
    @IBOutlet weak var fourthNumberLabel: UILabel!
    
    @IBOutlet weak var sixNumberLabel: UILabel!
    
    @IBOutlet weak var fifthNumberLabel: UILabel!
    
    @IBAction func rollBtn(_ sender: Any) {
        
        //투플 사용, 6개 램덤 숫자 생성
        let rnd = (Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45))
        
        // 각 label에 램덤값 출력
        numberLabel.text = String(rnd.0)
        secondNumberLabel.text = String(rnd.1)
        thirdNumberLabel.text = String(rnd.2)
        fourthNumberLabel.text = String(rnd.3)
        fifthNumberLabel.text = String(rnd.4)
        sixNumberLabel.text = String(rnd.5)
        
        /*공 색 분류,
        노란색 공일때는 숫자 텍스트 검정색
        파란색 공일때는 숫자 텍스트 흰색
        검정색 공일때는 숫자 텍스트 흰색
         */
        func numberLabeling(x:Int, y: UILabel){
            switch x {
            case (1...10) :
                y.textColor = UIColor.black
                y.backgroundColor = UIColor.systemYellow
                
            case (11...20) :
                y.textColor = UIColor.white
                y.backgroundColor = UIColor.systemBlue
                
            case (21...30) :
                y.backgroundColor = UIColor.red
                
            case (31...40) :
                y.textColor = UIColor.white
                y.backgroundColor = UIColor.black
                
            case (41...45) :
                y.backgroundColor = UIColor.green
                
            default:
                print("error")
            }
            
        }
        
        numberLabeling(x: rnd.0, y: numberLabel)
        numberLabeling(x: rnd.1, y: secondNumberLabel)
        numberLabeling(x: rnd.2, y: thirdNumberLabel)
        numberLabeling(x: rnd.3, y: fourthNumberLabel)
        numberLabeling(x: rnd.4, y: fifthNumberLabel)
        numberLabeling(x: rnd.5, y: sixNumberLabel)
        }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        //label의 cornerRadius사용해서 둥긍 공 모양으로 생성
        numberLabel.layer.cornerRadius = 15
        secondNumberLabel.layer.cornerRadius = 15
        thirdNumberLabel.layer.cornerRadius = 15
        fourthNumberLabel.layer.cornerRadius = 15
        fifthNumberLabel.layer.cornerRadius = 15
        sixNumberLabel.layer.cornerRadius = 15
        
    }
   
    

}

