%Inclass asssignment 6. 
%Sanjana Srinivasan

%1. a. Write a function which takes as inputs: a. a cell array of names. b.
% an array of numbers with the ages corresponding to the names, and c. a binary
% variable which is a P/F grade (true for pass) and returns a structure
% array called students with one structure storing this information for each student. 2. Write a
% function which takes your structure array of students as input and returns
% the average age of the students. 

%1a
stud_name=["adam" "betty" "carl" "dana" "eric"];
stud_age=[6 7 7 5 6];
stud_grade=[true true false true false];

student_total=studentgrades(stud_name, stud_age, stud_grade);

%1b
average_age=avgage(student_total);
%2. In this folder, you will find an immunofluorescence image of human stem
%cells stained for a gene called SOX2. Write a function which takes a
%filename as input and returns a structure containing metaData. Include at
%least the bitdepth, size, and date the image was taken. Do not include any
%information you do not understand. Hint: use the builtin function imfinfo
%b. Look at the field ImageDescription in the output of imfinfo - there is
%a lot of information here. Write code that gets the actual temperature
%from the camera out of this field. (Hint: it is preceded by the words
%"Actual Temperature" which don't appear anywhere else in
%ImageDescription). 

met_info=imgmeta('160611-AntiNodal-SD20x_f0003_w0002.tif')

img_desc=strsplit(met_info.description, '\n')

temperature=img_desc(strmatch('Actual Temperature', img_desc))