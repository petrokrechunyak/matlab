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
n = input("Введіть довжину масиву: ");
choice = input("Виберіть спосіб задання масиву:\n 1 - З клавіатури\n 2 - Генератор випадкових чисел\n:");
if choice == 1
    for i = 1:n
        arr(i) = input("Введіть " + i + " елемент: ");
    end
elseif choice == 2
    arr = generate(n);
else
    disp("Такого варіанта відповіді немає!")
    return;
end
fprintf("Готовий масив: ")
arr
zerosnum = 0;
 modulemax = 1;
product = 1;
for i = 1:n
    if arr(i) == 0
        zerosnum = zerosnum+1;
    end
    product = product * arr(i);
    if(abs(arr(modulemax)) < abs(arr(i)))
            product = 1;
            modulemax = i;
    end
end

disp("Кількість нульових елементів: " + zerosnum);
disp("Добуток елементів розташованих після максимального за модулем елемента: " + product);
end

function arr = generate(n)
for i = 1:n
    arr(i) = round(rand * 200 - 100);
end
end