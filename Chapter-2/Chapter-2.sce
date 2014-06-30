
//Chapter 2 : Digital Imaging System

//Example 2.1
//About : Program to calculate the focal length of the lens required
//Input : None
//Data Provided : Object width , Imaging Sensor Size and distance of the Object
//Output : Focal length required in mm

clc;
close;

//M(Magnification Factor) = Size of the image / Size of the Object
M = (8.8 / 150);


//F(Focal Length) = (Distance of the object from the Imagin Sensor * Magnification Facotr)/(Magnification Factor + 1)

F = (700 * M)/(M + 1);

disp(F,'The required focal length lens in mm = ')


//--------------------------------------------------------------------------------//

//Example 2.1
//About : Program to calculate the Physical size of an Image
//Input : None
//Data Provided :Image width and height in pixels and the resolution of the Image
//Output : Physical size of the Image in square inches 

Num_of_pixels_in_width = 2400;
Num_of_pixels_in_height = 2400;
Resolution = 300 // Scanning resoltuion in DPI

//The Physical size of the Image = size
Size = (Num_of_pixels_in_width/Resolution) * (Num_of_pixels_in_height/Resolution);

disp(Size,'The Physical size is (in square inches) ',)

//--------------------------------------------------------------------------------//

//Example 2.5
//About : Program to calculate the image matrix after applying threshold
//Input : None
//Data :Image matrix and threshold value
//Output : Thresholded image after applying the threshold 

//Given image matrix is F
F = [1 2; 5 4]

//Threshold value(Thresh) = 3
Thresh = 3;

//Thresholded Image after applying Threshold 

for i = 1:4
    if (F(i)>=Thresh) then//If the pixel value is >= Threshold value,the output is 1
        F(i) = 1;
    else
        F(i) = 0;   //If the pixel value is not >= Threshold value, the output is 0
    end
end

disp(F,'The Image matrix after applying Threshold is ')

//--------------------------------------------------------------------------------//


//Example 2.6
//About : Program to calculate the image matrix after applying threshold
//Input : None
//Data Provided:Image matrix and threshold matrix
//Output : Thresholded image after applying the threshold 


//Given image matrix is F
F = [1 2; 5 4]

//Threshold value(Thresh) = 3
Thresh = [2 2; 2 1];

//Thresholded Image after applying Threshold 

for i = 1:4
    if (F(i)>=Thresh(i)) then //If the pixel value is >= Threshold , the output is 1
        F(i) = 1;
    else
        F(i) = 0;   //If the pixel value is not >= Threshold , the output is 0
    end
end

disp(F,'The Image matrix after applying Threshold is ')


//Example 2.7
//About : Program to construct a higher order pattern array from Basic pattern              array using pattern generation mask
//Input : None
//Data Provided:Image matrix and ouput matrix size
//Output : Constructed higher order pattern matrix

F = [1 2;3 4];

M = F;

[n,n] = size(M); // Since its a square matrix m and n are same

//U matrix of the order n whose all elements are 1
U = [];
for i = 1:n
    for j = 1:n
        U(i,j) = 1;
    end
end

F = [(4*M) ((4*M)+(2*U)) ; ((4*M)+(3*U)) ((4*M)+(U))];
 
disp(F,'The constructed higher order(4x4) matrix from original F is ') 




