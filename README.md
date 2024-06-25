
This miniproject implements the basics of a mapping and localization pipeline.
Provided functionality allows you to manually control a vehicle using the
keyboard, and record sensor readings over an example map. (manual_collection)

Then, using label_generated_map(), you can draw road features on top of your
noisy, collected pointcloud map.

Finally, using test_ICP(), you can test your own implementation of an ICP
algorithm for refining noisy GPS readings to get a more accurate localization
estimate.

Tasks:

1. Implement 'update_point_associations!' in icp.jl so that tests pass

3. Implement 'update_point_transform!' in icp.jl so that tests pass
5. Create a short (ICP) report documenting the entire process of running the ICP
   process. This will include the following.

   pkg> instantiate
   using Revise
   using HW3
   manual_collection() # drive with arrow keys, press 's' when you have finished collecting 
   label_generated_map() # draw by clicking and dragging. press 'u' to undo
   line, and press 's' to save.
   test_ICP(; visualization=true) # visualization=true will allow you to step
   through your ICP algorithm on various initializations, watching as your
   estimated transform improves or gets worse. 

   You will need to write a small report documenting each step, including
   sample outputs of each step (screenshot of your manually generated map, your
   manually labeled map features, and screenshots of your ICP algorithm at
   work).
