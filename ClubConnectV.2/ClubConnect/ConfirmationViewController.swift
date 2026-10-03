import UIKit

final class ConfirmationViewController: UIViewController {

    var name: String = "Club Member"
    var wantsReminders: Bool = false
    var role: String = "Member"

    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Confirmation"

        let reminderStatus = wantsReminders ? "ON" : "OFF"
        messageLabel.text = """
        Thanks, \(name)! You’ve signed up as a \(role).
        Meeting reminders: \(reminderStatus)
        """
    }
}
