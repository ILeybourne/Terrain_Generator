
import UIKit
import SceneKit
import Combine


public class GameViewController: UIViewController {
    var scene: SCNScene!
    var sceneView = SCNView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        sceneView.frame = CGRect(origin: .zero, size: view.frame.size)
        
        scene = SCNScene(named:"Game.scn")
        
        sceneView.scene = scene
        sceneView.allowsCameraControl = true
        
        view.addSubview(sceneView)
    }
    
}
