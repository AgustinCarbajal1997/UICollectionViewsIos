import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myFirstLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .gray
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }

}
