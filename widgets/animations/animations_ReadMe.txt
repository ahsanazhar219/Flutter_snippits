/*
types of Animations

1 Transitions:
2 Transformation: Changing orientation, size changes, Scaling of widgets
3 opacity:
4 Property Animations:
5 Physics-based Animations:
6 Custom Animations:

types of animations in Flutter on the basis of development
1. implicit animation
     => Built in animations
 How to achieve implicit animations
 1.using animated widgets
     Animated Container
     Animated positioned
     Animated Opacity
     Animated default text style
     Animated Align
     Animated Padding

2.using Tween Animation Builder
  *it allow you to change the built in animated widgets with tween builder.

 2.explicit animations
    these are the animation in which we have more control. we will use animation
    controller to control animations

    **key aspect
    1. Manual Control
    2. custom Animations
    3. Animation Controllers
    4. Animation Builders
    5. Tween Animations
    6. Curve and Duration
    7. Listeners and Status
    8. Explicit Starting and Stopping

=> Basic Requirements
    1. Animation Controller
         it will manage the animation state and controlling its progress. it
         provide start stop reverse and reset
         animation.
    2. Ticker provider
        To Create an animation controller, we need a ticker provider it will
        help to manage frame rate and timing
        animation. the vsync(vertical Synchronization) parameter is used to
        sync the refresh rate of animation by assigning it ticker provider

    3. Animation
        The animation represents the current value of animation over time.

Custom Animation:
    the animation that is not available in flutter library

Hero Animation
    we move widget smoothly form one page to another page, one
    scene to another Scene.
    E.g profile picture of user in whatsapp settings menu
    the profile  picture moves from one page to another page and picture get bigger
    smoothly..



 */

