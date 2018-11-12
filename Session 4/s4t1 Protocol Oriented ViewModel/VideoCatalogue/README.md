# Video Catalogue
## Overview  
The Video Catalogue is a simple project to present my iOS developing skill and architecture ability.

## Orientation
I haven't include all dependent cocoapods in this repo. Please install pods before open the project.   

Please run below command in the terminal under project folder.    
 
     $pod install  
    
After install pods, please use Xcode to open the ```VideoCatalogue.xcworkspace```.     

### Architeture

MVVM without RxSwift. This projest doesn't require many user interactives, thus, we only have simple data binding and events binding.

### Model
I use Codable Struct to build the data model. The response data is an Array of catalogue.

### ServerManager
I can use simple URLSession to get json data in a couple of lines code. However, if so, the project will be hard to extend and test.   

The reason I create the ServerManager is for dependency injection, unit test and multi-services managerment.   

### Unit Test
Use XCTest framework for test ViewModel by feed mock data.   
Use XCTest framework for test API Web Service Call.  

### Q&A

1. Why use MVVM design pattern?   
	The MVC design pattern with Storyboard is not friendly for unit test. In order to do unit test, we need create the ViewController's instance in unit test class. The one of the MVVM's benefits is unit test friendly. 

2. Why use MVVM without reactive?   
	RxSwift is very popular now. Most of iOS MVVM projects adapted RxSwift. I know how to use it. I might create another feature branch to intrudce RxSwift into project in the future. The reason I didn't pick RxSwift with MVVM architecture is I want to try a new way to achieve MVVM.
	 
3. Why use Kingfisher pod?   
	Kingfisher is a lightweight, pure-Swift library for downloading and caching images from the web. It takes care of asynchronous image downloading and caching. I can write this kind feature by my self. However, to use Kingfisher will dramatically reduce the development cost for this project. 

### TODO:
1. Move all hard coded value and String into enum or struct.  
2. Improve show big image animation.  
3. More unit test coverage.  

## Feedback

I would love to hear your feedback. File an issue,  send me an email: [jiang.yi@siphty.com](mailto:jiang.yi@siphty.com).


Enjoy!  
Yi Jiang
