import UIKit

class GrapeCell: UITableViewCell {

    var delegate: GrapeCellDelegate?

    @IBAction func grapeButtonTouchUpInside(sender: UIButton) {
        if let _ = delegate {
            delegate!.grapeButtonTouchUpInside(self)
        }
    }

}

protocol GrapeCellDelegate {
    func grapeButtonTouchUpInside(cell: GrapeCell)
}