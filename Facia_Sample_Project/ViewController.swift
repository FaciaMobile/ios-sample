
import UIKit
import Facia

class ViewController: UIViewController {

    let facia = Facia()
    var configs = Dictionary<String, Any>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func launchFaciaButton(_ sender: Any) {
        additionalConfiguration()
        facia.createRequest(parentViewController: self, accessToken: "API ACCESS TOKEN", configs: configs) { result in
            print(result)
        }
    }
    
    func additionalConfiguration(){
        configs = [
                    "showConsent" : false,
                    "livenessType" : LivenessType.ADDITIONAL_CHECK_LIVENESS,
                    "qlFaceDetectionTimeout" : true,
                    "dlFaceDetectionTimeout" : true,
                    "dlEyesBlinkDetectionTimeout" : true,
                    "faceDetectionThreshold" : Threshold.medium,
                    "ovalSize" : OvalSize.large,
                    "showVerificationType" : true,
                    "showResult" : true,
                    "showFeedback" : true,
                    "showGreetings" : false,
                    "livenessRetryFlow" : true,
                    "documentRetryFlow" : true,
                    "livenessRetryCount" : 3,
                    "documentRetryCount" : 3,
                    "showMiddleInstructions" : true,
//                    "footer_image" : UIImage(named: "footer_logo") ?? UIImage(),
//                    "footerWidth" : 65.0,
//                    "footerHeight" : 25.0,
                    "uploading_loader_path_url" : "",
                    "verification_loader_path_url" : "",
                    "success_animation_path_url" : "",
                    "failure_animation_path_url" : ""
                ]
    }
}

