import UIKit

struct loggedInUser { }

class ApiClient {
    static let instance = ApiClient()
    init () { }
    
    func login(completion: (loggedInUser) -> Void) {
        print("Login called")
    }
}

class MockApiClient: ApiClient {
    override func login(completion: (loggedInUser) -> Void) {
        print("Mock Login Called")
    }
}

class LoginViewController: UIViewController {
    var api = ApiClient.instance
    func didTapButtonLogin () {
        api.login { user in
            //codes here...
        }
    }
}

let loginController = LoginViewController()
loginController.api = MockApiClient()
loginController.didTapButtonLogin()
