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
min = 0;
max = 0;
n = input("Введіть довжину масиву: ");
arr = [];
for i = 1:n
    arr(i) = input("Введіть " + i + " елемент: ");
    if(min == 0 || arr(i) < arr(min))
        min = i;
    end
    if(max == 0 || arr(i) > arr(max))
        max = i;
    end
end
% Видалення
new = [];
j = 1;
for i = 1:n
    if(i <= min || i >= max)
        new(j) = arr(i);
        j=j+1;
    end
end
fprintf("Введений масив: ")
arr
fprintf("Відформатований масив: ")
new
end