import UIKit
import TheIncredibleFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        let timCook = createIncrediblePerson()
        print(timCook.formattedInformation())
    }
    
    private func createIncrediblePerson() -> IncrediblePerson {
        return IncrediblePerson(name: "Tim Cook", email: "tcook@apple.com")
    }

}
