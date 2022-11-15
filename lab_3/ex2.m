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
A = [5,-6; 4,5];
B = [23;38];
A2 = inv(A);
x = A2*B;
fprintf("Розв'язками рівняння A є: %.0f та %.0f\n", x(1), x(2));

A = [1,5,2; 2,11,9; 2,10,5];
B = [16;30;31];
A2 = inv(A);
x = A2*B;
fprintf("Розв'язками рівняння B є: %.0f, %.0f та %.0f\n", x(1), x(2), x(3));
end