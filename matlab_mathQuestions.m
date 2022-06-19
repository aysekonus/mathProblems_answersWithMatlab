%% SORU 1 - diziyi kücükten büyüge sýralama

x = [4.5 5 -16.12 21.8 10.1 -16.11 5 14 -3 3 2];

elemanSayisi = length(x);

for i=1:1:elemanSayisi
    for j=i:1:elemanSayisi
        if x(i) > x(j)
            gecici = x(i);
            x(i) = x(j);
            x(j) = gecici;
        end
    end
end

fprintf('%4.2f < ',x);

%% SORU 2 - pisagor üclülerini bulan program

fprintf('\n\na    b    c\n');
disp('-------------');
for a=1:1:50
    for b=1:1:50
        for c=1:1:50
            if a^2 + b^2 == c^2
                fprintf('%d    %d    %d\n',a,b,c);
            end
        end
    end
end

%% SORU 3 - ikiz asal sayilari bulan program

n = 500;
for i=10:1:n
    pozitifBolenSayisi=0;
    for j=1:1:i
        if mod(i,j) == 0
            pozitifBolenSayisi=pozitifBolenSayisi+1;
        end
    end
    
    if pozitifBolenSayisi==2
        
        for k = i + 2
            pozitifBolenSayisi2=0;
            for l=1:1:k
                if mod(k,l) == 0
                    pozitifBolenSayisi2=pozitifBolenSayisi2+1;
                end
            end
            if pozitifBolenSayisi2==2
                fprintf('%d - %d\n',i,k);
            end
        end
    end
end
         
%% SORU 4 - izole edilmis asal sayilar

n = 100;
for i=50:1:n
    pozitifBolenSayisi=0;
    for j=1:1:i
        if mod(i,j) == 0
            pozitifBolenSayisi=pozitifBolenSayisi+1;
        end
    end
    
    if pozitifBolenSayisi==2
        
        for k = i + 2
            pozitifBolenSayisi2=0;
            for l=1:1:k
                if mod(k,l) == 0
                    pozitifBolenSayisi2=pozitifBolenSayisi2+1;
                end
            end
            if pozitifBolenSayisi2 ~= 2
                for a = i - 2
                    pozitifBolenSayisi3=0;
                    for b=1:1:a
                        if mod(a,b) == 0
                            pozitifBolenSayisi3=pozitifBolenSayisi3+1;
                        end
                    end
                    
                    if pozitifBolenSayisi3 ~=2
                        fprintf('%d\n',i);
                    end
                end
            end
        end
    end
end


%% SORU 5 - cosx taylor serisi

x = input('hesaplamak istediginiz cos x icin derece(radyan) giriniz: ');
if x == 125
    x=35;
end

N=1000;
T=1;
S = ones(size(x));
tol = 1e-6;

for n=1:N
    T = T.*(-x)/(2*n);
    if max(abs(T))<tol
        break;
    end
    S = S+T;
end

fprintf('    x             exp(x)            S\n');
fprintf('----------------------------------------\n');
fprintf('% 7.2f    %5.2f    %5.2f\n',[x,exp(x),S]');
fprintf('----------------------------------------\n');
fprintf(['iterasyon n = ', int2str(n), '\n']);
    

%% SORU 6 - toplamsorusu

n=10000;
T=0;
for i=1:1:n
    T = T + i;
    if T>100 && T<1000
        birler  = mod(T,10);
        temp = T - mod(T,100);
        yuzler = temp/100;
        onlar = (T - (temp + birler))/10;
        if yuzler == onlar
            if yuzler == birler
               fprintf('n: %d | toplam: %d\n',i,T);
            end
        end
    end    
end
 
%% SORU 7 - a
P = 100;
x1=P;
x2=(P/x1^2+2*x1)/3;
 
E=abs((x2-x1)/x1);
 
while E >= 1e-5
    x1=x2;
    x2=(P/x1^2+2*x1)/3;
    E=abs((x2-x1)/x1);
end
fprintf('The third sqrt of %3d : %5.3f\n', P,x1)

%% SORU 7 - b
P = 53701;
x1=P;
x2=(P/x1^2+2*x1)/3;
 
E=abs((x2-x1)/x1);
 
while E >= 1e-5
    x1=x2;
    x2=(P/x1^2+2*x1)/3;
    E=abs((x2-x1)/x1);
end
fprintf('The third sqrt of %3d : %5.3f\n', P,x1)

%% SORU 7 - c
P = 19.35;
x1=P;
x2=(P/x1^2+2*x1)/3;
 
E=abs((x2-x1)/x1);
 
while E >= 1e-5
    x1=x2;
    x2=(P/x1^2+2*x1)/3;
    E=abs((x2-x1)/x1);
end
fprintf('The third sqrt of %3d : %5.3f\n', P,x1)


%% SORU 8 - 3lü lineerdenklemsistemi

A = [-4 3 1; 5 6 -2; 2 -5 4.5];
b = [-18.2 -48.8 92.5]';
Eq = A\b;
disp(Eq);

%% SORU 9 - 5li lineerdenklemsistemi

A = [2.5 -1 3 1.5 -2; 3 4 -2 2.5 -1; -4 3 1 -6 2; 2 3 1 -2.5 4; 1 2 5 -3 4];
b  = [57.1 27.6 -81.2 -22.2 -12.2]';
Eq = A\b;
disp(Eq);

%% SORU 10 - a

A = [-2 1; -2 1];
b = [-5 3]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end

%% SORU 10 - b

A = [-2 1; -8 4];
b = [3 12]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end

%% SORU 10 - c

A = [-2 1; -2 1];
b = [-5 -5.00001]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end
    
%% SORU 10 - d

A = [1 5 -1 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1];
b = [19 7 30 -75]';

if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end

%% SORU 11 - Kirchoff

R1=1000; R2=5000; R3=2000; R4=10000; R5=5000; v = 100;
A = [0 -R2-R4 -R4; R1 -R2 R3; R5 -R4 -R3-R4-R5];
b = [-v 0 0]';
if length(b) > length(A)
    EqI = pinv(A)*b;
    disp(EqI);
elseif length(b) < length(A)
    EqI = pinv(A)*b;
    disp(EqI);
elseif length(b) == length(A)
    EqI = A\b;
    disp(EqI);
end

%% SORU 12 - plotting

A = [1 -5 -2; 6 3 1; 7 3 -5];
b = [11 13 10]';
rank(A)
rank([A,b])
A\b;
c=-10:10;
x=3*c; y=-2*c; z=c;
plot(c,x,c,y,c,z,'linewidth',2), grid on, legend('x','y','z'),xlabel('c');

%% SORU 13 - 3lü lineerdenklemsistemi

A = [10 11 -13; 1 5 -1];
b = [34 -2]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end

%% SORU 14 - a
x=[1 4 5];
A=[x(1).^2 x(1) 1; x(2).^2 x(2) 1; x(3).^2 x(3) 1];  
y=[4 73 120]';
if length(b) > length(A)
    Eq = pinv(A)*y;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*y;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\y;
    disp(Eq);
end


%% SORU 14 - b
x=[1 4 5];
A=[x(1).^3 x(1)^2 x(1) 1; x(2).^3 x(2)^2 x(2) 1; x(3).^3 x(3)^2 x(3) 1;];
y=[4 73 120]';
if length(b) > length(A)
    Eq = pinv(A)*y;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*y;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\y;
    disp(Eq);
end

%% SORU 15
A = [1 -3; 1 5; 4 -6];
b = [2 18 20]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end


%% SORU 16

A = [1 -3; 1 5; 4 -6];
b = [2 18 10]';
if length(b) > length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) < length(A)
    Eq = pinv(A)*b;
    disp(Eq);
elseif length(b) == length(A)
    Eq = A\b;
    disp(Eq);
end