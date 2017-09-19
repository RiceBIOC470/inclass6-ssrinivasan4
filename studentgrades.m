%Sanjana Srinivasan
%student grades

function a = studentgrades(name, age, grade) %a would be the full array
for i = 1:length(name)
    a(i)=struct('name', name(i), 'age', age(i), 'grade', grade(i))
end