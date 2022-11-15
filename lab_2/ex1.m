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
a=input("Введіть розмірність матриці (2, 3 або 4): ");
if(a < 2 || a > 4)
    disp("Такого варіанта відповіді немає!");
    return;
end
m = [];
if a ~= 4
    for i = 1:a
        for j = 1:a
           m(i,j) = input(sprintf("m[%d,%d]=", i, j));
        end
    end
else
    m = [1,4,1,1;
         2,14,0,10;
         2,8,3,5;
         1,4,1,2]
end
disp("Матриця: ")
m
fprintf("Визначник: %d\n", det(m))
end