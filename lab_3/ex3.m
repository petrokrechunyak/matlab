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
A = [3,4,2; -1,0,1; -1,2,-2];
B = [7;-4;-1];
X = program(A, B);
fprintf("Розв'язками рівняння A є: %.0f, %.0f та %.0f\n", X(1), X(2), X(3));
% B
A = [1,0,-3,5; 1,-1,2,-3; 2,-1,-1,2; 3,-2,1,-1];
B = [3;-1;2;1];
X = program(A, B);
fprintf("Розв'язками рівняння B є: %.0f та %.0f\n", X(1), X(2));
end

function X = program(A, B)
AB = [A,B];
n = length(B);
aug = [A B];
for j = 1:n
    if aug(j,j) ~= 0
        aug(j,:) = aug(j,:)/aug(j,j);
    end
    for i = 1:n
        if i ~= j 
            m = aug(i,j);
            aug(i,:) = aug(i,:) - m * aug(j,:);
        end
    end
end
for i = 1:n
    X(i) = aug(i,n+1);
end
end