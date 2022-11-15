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
    a=input("Введіть число а: ");
    b=input("Введіть число b: ");
    c = mod(a, b);
    d = b - a;
    e = (a*a) + (b*b);
    fprintf("Залишок від ділення %d на %d: %d\n", a, b, c)
    fprintf("Різниця %d i %d: %d\n", b, a, d)
    fprintf("Сума квадратів %d та %d: %d\n", a, b, e)
end