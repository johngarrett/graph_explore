import UIKit

class NotesListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private var notes = [NoteFullDetails]()

    override func viewDidLoad() {
        super.viewDidLoad()
        reload { [weak self] in
            self?.collectionView.reloadData()
        }
    }
    @IBAction func reloadAction(_ sender: Any) {
        reload { [weak self] in
            self?.collectionView.reloadData()
        }
    }

    func reload(_ completion: @escaping () -> Void) {
        print("Downloading notes")
        GraphAPI.queryAllNotes { [weak self] result in
            switch result {
            case .success(let notes):
                if let notes = notes {
                    print("Notes downloaded successfully")
                    self?.notes = notes
                } else {
                    print("The returned notes were empty")
                }
                completion()
            case .failure(let error):
                print("THERE WAS AN ERROR FETCHING NOTES::: \n \(error.localizedDescription)")
                completion()
            }
        }
    }
}

extension NotesListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notes.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noteCell", for: indexPath) as! NoteCell
        cell.loadValues(forNote: notes[indexPath.item])
        cell.layer.cornerRadius = 8.0
        return cell
    }
}
