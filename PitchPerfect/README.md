# PitchPerfect - Udacity Course
Course Link: <https://www.udacity.com/course/intro-to-ios-app-development-with-swift--ud585>

### Overview:
This application serves as an introduction to Xcode and the Swift coding language. The use for this application is to record a conversation between two users and then alters the voices in the conversation. There are six different ways of changing the voices once the recording is done. Altered voices include slow, fast, high, low, echo, or reverb pitch. During the creation of the application I learned how to use the following technologies: 
+ Navigation Controller
+ AVFoundation Library 
+ Layout Constraints 
+ UIButton 
+ Segue Creation

### App Screenshots
![Homepage View Controller](http://i64.tinypic.com/111mknl.png)
+ The image above is the homepage view controller of PitchPerfect. It contains a record and stop UIButton. The label between the the two buttons will change once one of the buttons is clicked on. Once the user is done record they will click on the stop button which will move them into the next view controller. 

![Voice Modifier View Controller](http://i68.tinypic.com/2cyfmlk.png)
+ This is the next view controller that will be introduced once the user clicks on the stop record button. The user has the ability to go back to the homepage view controller by using the back button on the Navigation Bar on the top. The rest of the view contains buttons to modify the voice that has been recorded. Button names (Left to Right) :  Slow, Fast, High Pitch, Low Pitch, Reverb, and Echo. Once one of these buttons is clicked, it will repeat your recorded voice and modify your voice depending on the button clicked on. A stop button is located under all those buttons to let the user stop the recorded voice. 

