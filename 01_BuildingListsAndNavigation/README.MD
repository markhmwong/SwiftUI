# 01 (Building Lists and Navigation)[https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation]

##### Notes
- PreviewProvider protocol returns one or more views with options to configure the size and device (previews dimensions can be changed dynamically)
- Use Group to show multiple previews
```
Group {
            LandmarkRow(landmark: landmarkData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
```
- Preview code only changes the canvas
- List {} - like a table view
- NavigationView {} - allows user to move between views
- Embed each row with a NavigationLink{} to being a transition to the destination view
- change the preview device by using
```
.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
```
or multiple devices
```
ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
```
- List and foreach operate in the same manner. Used with stacks, lists, groups and more.
