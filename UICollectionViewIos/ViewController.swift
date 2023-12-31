

import UIKit

class ViewController: UIViewController {

    var myCountries = ["Argentina", "Italia", "Brasil", "Estados Unidos"]
    private let myCellWidth = UIScreen.main.bounds.width / 2 // obtengo el ancho de pantalla
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }


}


extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        
        cell?.myFirstLabel.text = myCountries[indexPath.row]
        
        return cell!
    }
    
    
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print()
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellWidth, height: myCellWidth)
    }
}
