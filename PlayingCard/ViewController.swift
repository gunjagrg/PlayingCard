import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextItem))
            swipe.direction = [.left, .right]
            playingCardView.addGestureRecognizer(swipe)
        }
    }
    
    @objc func nextItem() {
        if let card = deck.draw() {
            playingCardView.rank = card.rank.order
            playingCardView.suit = card.suit.rawValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    

    

    


}


