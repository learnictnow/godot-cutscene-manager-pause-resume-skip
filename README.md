# godot-cutscene-manager
This Godot 4 snapshot shows an example of an animated scene that will change to the next scene when it finishes. You can also pause the scene by pressing **space**, or skip the scene by pressing **Escape**.

You could use a timer to handle this. However this example will track if the animation has finished playing and then change the scene.

The code has also been setup to be reusable in such that you can specify which scene to load when the stard button is pressed and which scene to go to when the animation finishes. In this case the program will change to AnimatedCutscene.tscn and when it finishes it will change to **end_scene.tscn**
