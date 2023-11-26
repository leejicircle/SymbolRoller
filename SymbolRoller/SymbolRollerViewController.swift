//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 이지원 on 11/24/23.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols:[String] = ["sun.min","moon","cloud","wind","snowflake"]
    //IBOutlet = interfacebuilder에 있는 ui 컴포넌트와 코드 연결
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    func reload(){
        //TODO
        // - 심볼에서 하나를 임의로 추출해서
        // - 이미지와 텍스트를 설정
        
        let symbol = symbols.randomElement()!       // ! 이용한 unrapping
        
        
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       reload()
        
        
            //스크린에 보일 때 뷰 컴포넌트 들이 메모리에 로드가 되었을 때

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewwillappear")
    }
    //
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewdidappear")
    }
    // IBAction 클릭되었을때
    @IBAction func buttononclick(_ sender: Any) {
        reload()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
