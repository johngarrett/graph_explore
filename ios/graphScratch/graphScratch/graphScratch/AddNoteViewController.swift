import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    @IBAction func DoneAction(_ sender: Any) {
        guard let title = titleTextField.text, let body = bodyTextView.text else {
            return
        }
        GraphAPI.addNote(title: title, body: body, creationDate: "001") { error in
            if error != nil {
                print("ERROR CREATING NOTE::: \n \(error!.localizedDescription)")
            }
            self.dismiss(animated: true, completion: nil)
        }
    }
}
