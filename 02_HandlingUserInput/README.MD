# 02 Handling User Input

##### Notes
- https://stackoverflow.com/a/59248581
- introduces Toggle(isOn:), @State, $ (accesses binding to a state), Observable Object, Combine framework, @Published, @EnvironmentObject, Button()
- @State should be applied to simple local values where as @ObservableObj should be applied to objects and complex properties that appear externally
- Further details on @State [here](https://stackoverflow.com/a/56438971). But basically it's not a variable, rather a delegate to access the wrapper. The variable is created in the background by SwiftUI. A lot work is done for you, and SwiftUI understands which State property has changed and will update that specific view accordingly.
- nest a ForEach within a List to combine static and dynamic lists together i.e. single toggle row at the top and dynamic rows below that
- click Resume to refresh the Preview when variables or the views are changed
- Observable object watches for any changes in the model and reflects that to the view
- Observable objects needs to publish changes to it's data so subscribers can react to those changes @Published
- @EnvironmentObject allows the passing of data between views much easier, as long as the ancestor views pass the environment object to the child views via .environmentObject(myObservableObj). The Child view then must include the property as
```
@EnvironmentObject var myObservableObj: MyObservableObj
```

and it will have access to the data. It doesn't need to be initialised because it's read from the environment. This saves us from continually passing data from view A -> B -> C -> D before being able to use it
