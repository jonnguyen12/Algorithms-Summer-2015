public class QuickFindUF
{
  private int[] id;
  
  //Default constructor
  public QuickFindUF(int N)
  {
    id = new int[N]; //init the array of N size
    for (int i = 0; i < N; i++) {
      id[i] = i; //set id of each object to itself
    }
  }
  
  public boolean connected(int p, int q) 
  {
    return id[p] == id[q];
  }
  
  public void union(int p, int q)
  {
    int pid = id[p];
    int qid = id[q];
    
    for (int i = 0; i < id.length(); i++)
    {
      if (id[i] == pid) id[i] = qid;
    }
  }
}
