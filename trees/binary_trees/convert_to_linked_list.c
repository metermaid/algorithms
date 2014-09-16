/* 
Convert into a circular doubly linked list
Paste your code here (You may delete these lines if not writing code) */
void treeToList(node* root,node*& prev, node*& head)
{
   if(root)
   {
      treeToList(root->left,prev,head);
      if(prev)
         prev->right = root;
      else
         head = root;
      root->left= prev;
      prev = root;
      treeToList(root->right,prev,head);
   }
}