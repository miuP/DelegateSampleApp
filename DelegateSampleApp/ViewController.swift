import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, GrapeCellDelegate {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! GrapeCell
        cell.delegate = self
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func grapeButtonTouchUpInside(cell: GrapeCell) {
        cell.hogeLabel.text = "🙆"
    }

}

