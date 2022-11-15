warning('off', "all")
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
A = [2,1,3,-4,-2; 2,-1,1,1,-3; 1,-1,-2,-3,5; 3,-2,-1,-2,2];
B = [0;0;0;0];
X = linsolve(A, B);
fprintf("Розв'язками рівняння А є: %.0f, %.0f, %.0f, %.0f та %.0f\n", X(1), X(2), X(3), X(4), X(5));

A = [1,-2,1,2; 2,-1,1,3; 3,1,-2,-2; 1,-3,4,8];
B = [2;5;0;10];
X = linsolve(A, B);
fprintf("Розв'язками рівняння B є: %.0f, %.0f, %.0f та %.0f\n", X(1), X(2), X(3), X(4));
end