import Foundation

/*
 Here AnyObject is protocol that indicates that only class types can conform to this delegate.
 It ensures that this can only be adopted by classes
 */
protocol TaskDelegate: AnyObject {
    /*
     task:Task - ia a parameter , where task is the name of parameter while
     Task is the typ of parameter , in this contexta class that is defined below in the code
     */
    func taskDidComplete(task: Task)
}

// Define the class Task
class Task {
    weak var delegate: TaskDelegate?
    
    func completeTask() {
        // Simulate task completion
        print("Task is being completed...")
        
        // Notify the delegate that the task is complete
        delegate?.taskDidComplete(task: self)
    }
}

// Define the class TaskHandler that conforms to TaskDelegate
class TaskHandler: TaskDelegate {
    func taskDidComplete(task: Task) {
        print("TaskHandler received task completion notification.")
    }
}

// Demonstrate the delegate pattern
func main() {
    let task = Task()
    let taskHandler = TaskHandler()
    
    // Set the delegate of the task to the taskHandler
    task.delegate = taskHandler
    
    // Simulate task completion
    task.completeTask()
}



