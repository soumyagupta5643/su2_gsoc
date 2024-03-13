// Define the jet geometry
Point(1) = {0, 0, 0, 1.0}; // Define a point at the origin
Point(2) = {10, 0, 0, 1.0}; // Define a point 10 units away from the origin along the x-axis
Point(3) = {10, 2, 0, 1.0}; // Define a point 2 units above the x-axis
Point(4) = {0, 2, 0, 1.0}; // Define a point 2 units above the origin

Line(1) = {1, 2}; // Create a line between points 1 and 2 (bottom of the jet)
Line(2) = {2, 3}; // Create a line between points 2 and 3 (top of the jet)
Line(3) = {3, 4}; // Create a line between points 3 and 4 (right side of the jet)
Line(4) = {4, 1}; // Create a line between points 4 and 1 (left side of the jet)

Line Loop(1) = {1, 2, 3, 4}; // Create a loop consisting of the four lines
Plane Surface(1) = {1}; // Create a surface from the line loop

// Define boundary conditions
Physical Line("Inlet") = {1}; // Assign the bottom line as the inlet boundary
Physical Line("Outlet") = {3}; // Assign the right side line as the outlet boundary
Physical Line("Walls") = {2, 4}; // Assign the top and left side lines as wall boundaries

// Define mesh settings
Mesh.CharacteristicLengthMin = 0.1; // Set the minimum mesh size
Mesh.CharacteristicLengthMax = 1.0; // Set the maximum mesh size
