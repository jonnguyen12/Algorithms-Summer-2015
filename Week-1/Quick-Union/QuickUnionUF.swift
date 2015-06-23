class QuickUnionUF {
    //Data structure
    var id: [Int]
    
    //Set id of each object to itself
    init(N: Int)
    {
        id = [Int]()
        for i in 0...N {
            id[i] = i
        }
    }
    
    //Chase parent pointers until reach root
    func root(var i: Int) -> Int {
        while i != id[i] {
            i = id[i];
        }
        return i;
    }
    //Check if p and q have the same root
    func connected(p: Int, q: Int) -> Bool {
        return root(p) == root(q)
    }
    
    //Change root of p to point to root of q
    func union(p: Int, q: Int) {
        let i = root(p)
        let j = root(q)
        id[i] = j
    }
    
}
