close all

prompt = 'Introduzca el valor (grados) de la rotación en X (phi):';
phiDeg = input (prompt);

prompt = 'Introduzca el valor (grados) de la rotación en Y (theta):';
thetaDeg = input (prompt);

prompt = 'Introduzca el valor (grados) de la rotación en Z (psi):';
psiDeg = input (prompt);

phiRad = deg2rad(phiDeg);
thetaRad = deg2rad(thetaDeg);
psiRad = deg2rad(psiDeg);

for phiRad = 0:0.4:phiRad
    clf;
    for thetaRad = 0:0.4:thetaRad
        clf;
        for psiRad = 0:0.4:psiRad
            clf;

line([5 -5],[0 0],[0 0],'color' ,[1 1 0],'linewidth', 2);
line([0 0],[5 -5],[0 0],'color' ,[0 1 1],'linewidth', 2);
line([0 0],[0 0],[5 -5],'color' ,[1 0 1],'linewidth', 2);

p1 = [0 0 0];
p2 = [7 0 0];
p3 = [7 3 0];
p4 = [0 3 0];
p5 = [0 0 2];
p6 = [7 0 2];
p7 = [7 3 2];
p8 = [0 3 2];

print(p1,p2,p3,p4,p5,p6,p7,p8)

view(123,30)

Rx = [1 0 0; 0 cos(phiRad) -sin(phiRad);0 sin(phiRad) cos(phiRad)];
Ry = [cos(thetaRad) 0 sin(thetaRad); 0 1 0; -sin(thetaRad) 0 cos(thetaRad)];
Rz = [cos(psiRad) -sin(psiRad) 0; sin(psiRad) cos(psiRad) 0; 0 0 1];

Rt = Rx*Ry;

p1=Rt*p1';
p2=Rt*p2';
p3=Rt*p3';
p4=Rt*p4';
p5=Rt*p5';
p6=Rt*p6';
p7=Rt*p7';
p8=Rt*p8';

print(p1,p2,p3,p4,p5,p6,p7,p8)

pause (0.4)

        end
        
    end
    
end


