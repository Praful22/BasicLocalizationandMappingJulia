
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
2. Implement 'update_point_transform!' in icp.jl so that tests pass
3. Create a short (ICP) report documenting the entire process of running the ICP
   process.

You will need to write a small report documenting each step, including
sample outputs of each step (screenshot of your manually generated map, your
manually labeled map features, and screenshots of your ICP algorithm at work).
