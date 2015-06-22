//Class QuickFindUF in Swift
class QuickFindUF {
    var id: [Int] //declare a property call id
    
    init(N: Int)
    {
        id = [Int]() //create an empty array of id
        
        for i in 0...N {
            id[i] = i; //set id of each object to itself
        }
    }
    
    
    //Check to see if p and q have the same id
    func connected(p: Int, q: Int) -> Bool {
        return id[q] == id[q]
    }
    
    //Merge q and q
    func union(p: Int, q: Int) {
        let qid = id[q]
        let pid = id[p]
        
        for i in id {
            if id[i] == pid {
                id[i] = qid
            }
        }
    }
}
