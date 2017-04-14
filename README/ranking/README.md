+ [Word Cloud](https://github.com/amueller/word_cloud) centered at different topics (3D, 360dgr)
+ [Top-Down](https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiYo_T3qIvTAhXFKyYKHcL-CLAQjRwIBw&url=http%3A%2F%2Fblog.vjeux.com%2F2015%2Fjavascript%2Fdirty-up-and-execute-top-down.html&psig=AFQjCNF7aRltmJC8XoCBPyEL2cm0aNKIZQ&ust=1491413094560630) rooted at different topics
+ [Weight Histogram]
  + __How to Rank__: 
    + Decide weights of leaf tasks
      + Compare all leaf tasks together in the current period
      + Select tasks you only need to focus on the current period
      + Mark unselected tasks with weights 0 automatically
    + Calculate weight of each task
      + Start the weight of leafs & Added together
      + Calculate the weight of each node based on their children tasks
      + Use __Message Passing__ methods
   + Be careful:
     + The importance of task will be reduced after its descendant tasks. Is it reasonable? Should we consider the time?
     + One grandchild task could be the child of several children tasks, and one task could be the parent of those children tasks. Don't count the grandchild task more than once for its grandparent task.
