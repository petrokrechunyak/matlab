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
A = matrix("A");
B = matrix("B");
C = [2,1,1; 0,1,-1];
F = [3,-1; -3,-5; -3,-3];
G = [0,1,1; -1, -3, -5];
H = [0,1,3; -1,-5,-5; -1,-4,3];
disp("***********")
fprintf("5A:") 
5*A
fprintf("A-B:")
A-B
fprintf("5A-5B")
5*A-5*B
fprintf("Транспонована матриця F:")
transpose(F)
fprintf("G-F(Транспонована):")
G-(transpose(F))
fprintf("AB:")
A*B
fprintf("BA:")
B*A
fprintf("FC:")
F*C
fprintf("GH:")
G*H
end

function m = matrix(str)
m = [];
disp("Матриця " + str + ": ")
for i = 1:2
    for j = 1:2
        m(i,j) = input(sprintf("%s[%d,%d]=", str, i, j));
    end
end
end