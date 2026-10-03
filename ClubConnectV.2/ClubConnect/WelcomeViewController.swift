import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var reminderSwitch: UISwitch!
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // The machine problem specifically requires this title to be supplied
        // by code instead of being left hard-coded on the storyboard canvas.
        titleLabel.text = "Campus Club Connect"
        navigationItem.title = "Campus Club Connect"
    }

    @IBAction func joinButtonTapped(_ sender: UIButton) {
        // Dismiss the keyboard before navigating so the transition stays clean.
        nameTextField.resignFirstResponder()
        performSegue(withIdentifier: "ShowConfirmationSegue", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowConfirmationSegue",
              let destination = segue.destination as? ConfirmationViewController else {
            return
        }

        // UITextField.text is optional. Trimming whitespace also prevents a
        // name made only of spaces from reaching the confirmation screen.
        let enteredName = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        destination.name = enteredName.isEmpty ? "Club Member" : enteredName
        destination.wantsReminders = reminderSwitch.isOn

        let roles = ["Member", "Officer"]
        let selectedIndex = roleSegmentedControl.selectedSegmentIndex
        destination.role = roles.indices.contains(selectedIndex) ? roles[selectedIndex] : "Member"
    }
}
