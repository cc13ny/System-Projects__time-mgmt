# time-mgmt
Single node version for personal time management &amp; Distributed version for team project management

<p align="center">
  <img src="http://leoncom.org/wp-content/uploads/TraceInfrastructure_12137/image.png" width="400px"/>
</p>

<p align="center">
  <em>Task Dependencies / Credit to Google Dapper Paper</em>
</p>

# Initial Plan (Single Node Version)

1. Think an individual as a CPU
2. How to organize tasks in terms of priority, deadline, and complexity
3. Consider every possible scenarios
4. Think about the requirement of the task itself (importance & urgency) and whether it's easy to be done (our efficiency & its complexity)

# ToDo

1. Security on rich-editor
2. Make it as a convenient daily tool first
   + Based on Time （Resource)
   + Based on Topic (Planning)
3. *Formulate Task Dependencies*, Graph Algo
4. __Topic Distribution__ for _a range of time_
5. _Three Key Ideas_
   + Left Dropdown (Topics, title dropdown) + Middle (optional, Titles) + Right Full text (Description)
   + Automatic Classification/Clustering (with/without checked topices) for each new Task
   + Ranking: Different Views centered around different tasks or objects or topics
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
6. Core: Node, Edge, View

# Reading

1. [Redirecting](http://api.rubyonrails.org/classes/ActionController/Redirecting.html)
2. [Rails 5 improves redirect_to :back with new redirect_back method](http://blog.bigbinary.com/2016/02/29/rails-5-improves-redirect_to_back-with-redirect-back.html)
3. [Getting Started with Rails](http://guides.rubyonrails.org/getting_started.html)
