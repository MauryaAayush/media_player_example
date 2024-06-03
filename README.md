# Media Player Example

###
<h3 align="center"><i>Carousal Slider with Custom Indicator</i></h3>

## About : 
* A Carousel Slider is a graphical user interface component that allows users to cycle through a series of items, typically images or cards, by swiping or clicking navigation controls.
* It's commonly used in mobile and web applications to display a collection of content in a compact and interactive way.
* Adding a custom indicator enhances the user experience by providing visual feedback on the current position within the carousel.


## Features : 
* Automatic Scrolling: The carousel can automatically cycle through items after a set interval, providing a dynamic and engaging experience without user interaction.
* Swipe Navigation: Users can manually navigate through items by swiping left or right on touch devices, offering intuitive control.
* Customizable Indicators: Indicators show the current position within the carousel. Custom indicators can be styled to match the application's design and provide clear visual feedback.
* Infinite Looping: The carousel can loop back to the beginning after reaching the end, creating a seamless experience.
* Responsive Design: The carousel adjusts to different screen sizes and orientations, ensuring a consistent experience across devices.
* Animation Effects: Transition effects, such as fading or sliding, can be applied to the items as they move, adding a polished look to the carousel.
* Thumbnail Navigation: Thumbnails of the items can be displayed as part of the navigation, allowing users to jump to a specific item quickly.
* Content Versatility: The carousel can display various types of content, including images, text, videos, or custom widgets.
* Pause on Hover: The automatic scrolling can pause when the user hovers over the carousel, providing time to view content in detail.
* Customization Options: Developers can customize the size, spacing, and styling of the items and indicators to fit the application's theme.




## Code :

```dart

CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
```


<div align="center">
  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/7467d277-2407-4b8c-a4c1-50da23700456" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/faf196e4-6d77-46ee-9e07-c49ad19daf37" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/fb131346-ee1c-4929-b3d4-2a96c954394b" height=500px hspace=20>
    
  <video src = "https://github.com/MauryaAayush/media_player_example/assets/143180849/31539e09-0601-4ac6-8b54-f46db9aa39fe">
</div>

###
<div align="center">
<a href="https://github.com/MauryaAayush/media_player_example/tree/master/lib/Screens/%20Carousel_Slider%20(lec-%201)">-> 👉📚 See The Code 📚 👈<-</a>
</div>




###
<h3 align="center"><i>Parallax Effect</i></h3>

## About : 
* The parallax effect is a visual phenomenon where objects closer to the viewer appear to move faster than objects that are further away.
* This effect is commonly used in web design, mobile applications, and video games to create an illusion of depth and provide a more engaging user experience.

## Features : 
* Depth Illusion: By making background elements move slower than foreground elements, the parallax effect creates a sense of depth in a 2D space.
* Engaging Visuals: The effect adds a dynamic layer to the design, making the user interface more interactive and visually appealing.
* Smooth Animations: To achieve a realistic effect, smooth and fluid animations are crucial. This typically involves easing functions and frame-by-frame updates.
* Scrolling Interaction: The parallax effect is often tied to the user’s scrolling actions, where different layers move at different speeds based on the scroll position.
* Layering: Multiple layers are used, each moving at different speeds. Typically, the background layers move the slowest, while the foreground layers move the fastest.
* Responsiveness: The effect should be implemented in a way that it works smoothly across various devices and screen sizes.

## Packages Used :
* cupertino_icons: ^1.0.6
* carousel_slider: ^4.2.1
* provider: ^6.1.2
* video_player: ^2.8.6

<div align="center">

 








  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/14764e66-b335-42d7-bd8d-9e34f916917e" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/f5d23b64-a04b-48be-9bac-504f3f1f930d" height=500px hspace=20>
  <img src="https://github.com/MauryaAayush/media_player_example/assets/143180849/ff6066ca-08a0-43d3-a38f-55ce5619f12e" height=500px hspace=20>
    
  <video src = "https://github.com/MauryaAayush/media_player_example/assets/143180849/7d50f132-5468-4c7f-b0b1-629f03604ab6">
</div>


###
<h3 align="center"><i>Video (Chrome view)</i></h3>
<div align="center">
 <video src="https://github.com/MauryaAayush/media_player_example/assets/143180849/b06098e8-aa85-47ee-bc1e-9595fe43d214">
</div>

###
<div align="center">
<a href="https://github.com/MauryaAayush/media_player_example/tree/master/lib/Screens/Parallax%20Effect%20(lec-1)">-> 👉📚 See The Code 📚 👈<-</a>
</div>


