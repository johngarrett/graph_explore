import UIKit

class NoteCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    
    func loadValues(forNote note: NoteFullDetails) {
        title.text = note.title
        body.text = note.body
    }
}
