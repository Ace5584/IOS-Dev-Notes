// APP1X: Build your very first iOS app
// Lesson 5: Intro to UI Development

//////////////////////
// Part One: Basic Views
//////////////////////

// Below is an adapted template of the Single View app playground.
// We've added a few extra components and comments to walk us through
// what is happening programmatically. You may need to View > Assistant
// Editor > Show Assistant Editor to see the Live View, which will show
// us what we make as we make it.

// Firstly, let's import UIKit, which is the framework we build our user
// interface on top of. We also need to import PlaygroundSupport so we can
// use the Live View.

import UIKit;
import PlaygroundSupport;

// Then, let's define our own ViewController that inherits from the
// UIViewController class. As we may recall, the UIViewController manages
// the View.

class MyViewController : UIViewController {
    
    
    // This function is run when we change the value on our DatePicker. If
    // you've just opened the file, don't worry, things will make a bit more
    // sense once you've run through what's down below. We have to decorate
    // these functions with @objc due to the quirks of Swift, as seen below.
    @objc func datePickerValueChanged() {
        
        // This function just tells us what we've done.
        print("Moved the DatePicker!");
    }
    
    // This function is run when we tap the Button. If you've just opened the
    // file, don't worry, things will make a bit more sense once you've run
    // through what's down below. We have to decorate these functions with
    // @objc due to the quirks of Swift, as seen below.
    @objc func buttonTapped() {
        
        // This function just tells us what we've done.
        print("Tapped the Button!");
    }
    
    @objc func changedSlider(value: Float){
        print("Slider Is Changed!")
    }
    
    // We need to define what will be in our view using overriding of the
    // loadView() function. We'll explain what this means in future lesson,
    // but for now, just remember that this is where we will be making
    // our view.
    
    override func loadView() {
        
        // As we are going to be putting a lot of components into our View,
        // let's start with a UIScrollView which we will place them inside
        
        let view = UIView();
        
        // Let's set the content size to something that will enable us to scroll
        // off the page.
//        view.contentSize = CGSize(width: 375, height: 1000);
        
        // When we are specifying this programatically, we need to specifically
        // detail the background colour. Comment the line out and see what
        // happens!
        
        view.backgroundColor = .white;

        // Next, let's add a Label to our ScrollView. We have to instantiate
        // a UILabel, then tell it where it should place itself, as well as
        // any other properties we'd like to set.
        
        let label = UILabel();
        
        // The CGRect below defines the top-left corner of where the Label
        // will be rendered, as well as the width and height of the label.
        
        label.frame = CGRect(x: 50, y: 200, width: 200, height: 20);
        
        // We can then set the properties of the label's text.
        
        label.text = "This is a Label!";
        label.textColor = .black;
        
        // We then place this inside our UIScrollView by calling the
        // addSubView function and passing the label to it.
        
        view.addSubview(label);
        
        // Let's now add a UITextView below the UILabel, in the same manner.
        // Remember that despite being a View, you can interact with it.
        
        let textView = UITextView();
        textView.frame = CGRect(x: 50, y: 240, width: 200, height: 100);
        textView.text = "Tap to edit me - I'm a TextView!";
        textView.textColor = .black;
        
        // Add this into the ScrollView as well.
        
        view.addSubview(textView);
        
        ///////////////////////////
        // Part Two: Basic Controls
        ///////////////////////////
        
        // Let's go and make things a bit more advanced. We can go and add
        // some controls for the user to play around with.
        
        let button = UIButton();
        button.frame = CGRect(x: 50, y: 300, width: 100, height: 20);
        button.setTitle("Tap me!", for: .normal);
        button.setTitleColor(.blue, for: .normal);
        
        // We can assign an action to the Button when the button has been
        // pressed. In this case, once the tap has touched down (in other
        // words, your finger is touching the screen), the function above
        // buttonTapped will be run.
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown);
        
        // Add this into the ScrollView as well.
        
        view.addSubview(button);
        
        // Adding UISlider
        let slider = UISlider();
        slider.minimumValue = 0;
        slider.maximumValue = 10;
        
        slider.setValue(3, animated: false);
        slider.frame = CGRect(x: 150, y: 300, width: 150, height: 20);
        view.addSubview(slider);
        
        // Label for Slider
        let slideVal = UILabel();
        slideVal.frame = CGRect(x: 215, y: 270, width: 20, height: 20)
        slideVal.text = String(slider.value);
        slider.addTarget(self, action: #selector(changedSlider), for: .valueChanged)
        
        view.addSubview(slideVal);
        
        // Now, let's create a DatePicker and place it off the screen of
        // our ScrollView.
        
        let datePicker = UIDatePicker();
        datePicker.frame = CGRect(x: 0, y: 350, width: 375, height: 400);
        
        // We can also assign an action to the DatePicker when the value has
        // changed. We can pass that value through to the function, however
        // we won't at this point in time, as it will require us to format
        // it before use.
        
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged);
        
        // Add this into the ScrollView.
        
        view.addSubview(datePicker);

        // We then set the ViewController's view to be the View we just
        // built (i.e. the ScrollView).
        
        self.view = view;
    }
}

// Present the view controller in the Live View window.
PlaygroundPage.current.liveView = MyViewController();
