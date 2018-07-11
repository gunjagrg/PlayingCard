import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pipsPerRowForRank: [[Int]] = [[0],[1],[1,1],[1,1,1],[2,2],[2,1,2],[2,2,2],[2,1,2,2],[2,2,2,2],[2,2,1,2,2],[2,2,2,2,2]]
        let test = pipsPerRowForRank.reduce(0) {

            (result, nextItem) in
            max(nextItem.max() ?? 0, result)
        }
        print(test)
        
        let num: [[Int]] = [[1],[1,1],[1,1,1],[2,2],[2,2,2,2]]//[1,2,3,4]
        let nSum = num.reduce(0) { (result, nextItem) in
            max(nextItem.max() ?? 0, result)
        }
        print(nSum)
    }
    

    


}


