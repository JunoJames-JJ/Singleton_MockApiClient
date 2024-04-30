ApiClient Login with MockApi to Test

The code consist of three main components: 

1. A singleton class responsible for handling requests related to login
2. A subclass of MockApiClient used for testing, allowing the login process without making an actual API calls
3. A view controller to perform login operation 

Example Usage: 

let loginController = LoginViewController()
loginController.api = MockApiClient()
loginController.didTapButtonLogin()


