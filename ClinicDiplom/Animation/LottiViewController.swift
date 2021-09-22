//
//  AnimationViewController.swift
//  ClinicDiplom
//
//  Created by Professor on 09/09/2021.
//

import UIKit
import Lottie

class LottiViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    //   private var animationView: AnimationView?

 //   var filename: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lottieAnimation()
    }
    func lottieAnimation() {
        let animationView = AnimationView(name: "loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFit
        view.addSubview(animationView)
       // animationView.animationSpeed = 0.5
      
       // animationView.play()
        animationView.play { nextController in
            print("PlanetVetViewController")
        }
        animationView.loopMode = .loop
        
    }
    @IBAction func startApp(_ sender: Any) {
        let viewController = PlanetVetViewController(nibName: "PlanetVetViewController", bundle: nil)
        present(viewController, animated: true)
    }
}
        
     /*   animationView = .init(name: "elefanLoading")
        animationView?.frame = view.bounds
        animationView?.loopMode = .loop //постоянная анимация
        animationView?.animationSpeed = 0.5 //скорость анимациии изображения
        view.addSubview(animationView!)
        animationView?.play()
        
        view.sendSubviewToBack(animationView!)
 */
    
        

    

    
