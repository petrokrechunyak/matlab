flag = false;
while true
    choice = input("Перейти до виконання завдання (1) чи вийти (2): ");
    if choice == 1
        main()
    elseif choice == 2
        flag = true;
    else 
        continue;
    end
    if flag
        break;
    end
end

function main()
A = [7, -8; -6, -7];
detA = det(A);
B = [1, -84];
a1 = changer(A, B, 1);
a2 = changer(A, B, 2);
x(1) = det(a1)/detA;
x(2) = det(a2)/detA;
fprintf("Розв'язками рівняння A є: %d та %d\n", x(1), x(2));
%Друге рівняння
A = [1,3,2; 2,7,2; 2,6,5];
B = [-2,-8,-3];
detA = det(A);
a1 = changer(A, B, 1);
a2 = changer(A, B, 2);
a3 = changer(A, B, 3);
x(1) = det(a1)/detA;
x(2) = det(a2)/detA;
x(3) = det(a3)/detA;
fprintf("Розв'язками рівняння B є: %.0f, %.0f та %.0f\n", x(1), x(2), x(3));

end


function A = changer(A, B, n) 
for i = 1:length(B)
    A(i,n) = B(i);
end
end