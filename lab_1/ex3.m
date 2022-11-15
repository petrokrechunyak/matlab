flag = false;
while true
    choice = input("Перейти до виконання завдання (1) чи вийти (2): ");
    if choice == 1
        disp("*******************")
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
a = input("Введіть число а: ");
b = input("Введіть число а: ");
x = (2 * cos(a) - b*b)/(3*(a*a - 3*b));
fprintf("Значення х: %.2f\n", x);
end