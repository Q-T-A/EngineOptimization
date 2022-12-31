%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% The program takes in RPM values and torque values and returns a load.
%
%% ____________________
%% INITIALIZATION
rpm = [500,1500,2500,6300,6600,6900,7200,7500,7800,8100,8400,8700,9000, ...
    9300,9600,9900,10200 ];
x = input('Enter RPM ');%comment out this line to implement into new script
l = length(rpm);
i = 0;%counter
rv = rpm(1);
check = rpm(1) - x;%distance from input to first value
for i = 1:l-1%don't need to go through full vector when sorting
    if (abs(check) > abs(rpm(i+1) - x))%if dist from current val is more than
        %dist from following val reassign
        check = abs(rpm(i+1) - x);%new shortest distance
        rv = rpm(i+1);%value at that index
    end
end
rpmIn = rv;

%% ____________________
%% CALCULATIONS
load = 0;

if(rpmIn == 500)
    maxTorque = 43.7;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 1.461 * torqueIn^0.5092;

elseif(rpmIn == 1500)
    maxTorque = 47.5;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 1.096 * torqueIn^0.5781;

elseif(rpmIn == 2500)
    maxTorque = 49.97;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = (-0.001451 * torqueIn^2) + (0.2354 * torqueIn) + 1.523;

elseif(rpmIn == 6300)
    maxTorque = 51.3;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = (-0.0007823 * torqueIn^2) + (0.2007 * torqueIn) + 1.516;

elseif(rpmIn == 6600)
    maxTorque = 51.7;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = -0.1034 + (0.6865 * torqueIn) + (-0.04966 * torqueIn^2) + (0.002021 * torqueIn^3) + (-0.00003721 * torqueIn^4) + (0.0000002544 * torqueIn^5);
    
elseif(rpmIn == 6900)
    maxTorque = 51.11;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = -0.02522 + (0.2919 * torqueIn) + (-0.003217 * torqueIn^2) + (-0.00002960 * torqueIn^3) + (0.000001768 * torqueIn^4) + (-0.00000001397 * torqueIn^5);
    
elseif(rpmIn == 7200)
    maxTorque = 52.25;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = (0.001083 * torqueIn^2) + (0.1098 * torqueIn) + 1.046;

elseif(rpmIn == 7500)
    maxTorque = 53.01;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 0.7248 + (0.03717 * torqueIn) + (0.003770 * torqueIn^2) + (0.0001591 * torqueIn^3) + (-0.000007587 * torqueIn^4) + (0.00000007786 * torqueIn^5);
    
elseif(rpmIn == 7800)
    maxTorque = 53.01;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 0.7799 + (0.07743 * torqueIn) + (0.004066 * torqueIn^2) + (0.00003966 * torqueIn^3) + (-0.000004305 * torqueIn^4) + (0.00000005185 * torqueIn^5);

elseif(rpmIn == 8100)
    maxTorque = 51.30;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 0.9817 + (0.05209 * torqueIn) + (0.01704 * torqueIn^2) + (-0.0008019 * torqueIn^3) + (0.00001530 * torqueIn^4) + (-0.0000001024 * torqueIn^5);
    
elseif(rpmIn == 8400)
    maxTorque = 50.16;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 1.508 + (0.1615 * torqueIn) + (0.003302 * torqueIn^2) + (-0.0001550 * torqueIn^3) + (0.000001818 * torqueIn^4);
    
elseif(rpmIn == 8700)
    maxTorque = 49.02;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 1.762 + (0.1737 * torqueIn) + (0.004538 * torqueIn^2) + (-0.0002202 * torqueIn^3) + (0.000002537 * torqueIn^4);
    
elseif(rpmIn == 9000)
    maxTorque = 47.31;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 2.225 + (0.2043 * torqueIn) + (0.0008620 * torqueIn^2) + (-0.0001206 * torqueIn^3) + (0.000002059 * torqueIn^4) + (-0.000000006255 * torqueIn^5);
    
elseif(rpmIn == 9300)
    maxTorque = 44.65;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 2.729 + (0.2227 * torqueIn) + (-0.002297 * torqueIn^2) + (-0.00001225 * torqueIn^3) + (0.0000008224 * torqueIn^4) + (-0.000000002568 * torqueIn^5);
    
elseif(rpmIn == 9600)
    maxTorque = 42.56;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 3.069 + (0.2170 * torqueIn) + (-0.001692 * torqueIn^2) + (-0.00004399 * torqueIn^3) + (0.000001211 * torqueIn^4);

elseif(rpmIn == 9900)
    maxTorque = 40.66;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 3.431 + (0.2168 * torqueIn) + (-0.002620 * torqueIn^2) + (-0.000003328 * torqueIn^3) + (0.0000008081 * torqueIn^4);

elseif(rpmIn == 10200)
    maxTorque = 38;
    fprintf("\nTORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
    torqueIn = input("Enter torque value: ");
    while(torqueIn <= 0 || torqueIn > maxTorque)
        fprintf("\nError: Torque value must be between %.3f and 0\n\n", maxTorque);
        fprintf("TORQUE RANGE FOR %d RPM: 0 - %.2f\n", rpmIn, maxTorque);
        torqueIn = input("Enter torque value within the above range: ");
    end
    load = 3.747 + (0.2105 * torqueIn) + (-0.002990 * torqueIn^2) + (0.00005074 * torqueIn^3) + (-0.00000009979 * torqueIn^4);
end

fprintf("\nSuggested throttle percentage: %.3f%%\n", load*10)

%% ____________________
%% TESTING RESULTS
%500 RPM
%Enter RPM value: 500
%Enter torque value: 40
%Suggested throttle percentage: 95.591%

%1500 RPM
%Enter RPM value: 1500
%Enter torque value: 40
%Suggested throttle percentage: 92.462%

%2500 RPM
%Enter RPM value: 2500
%Enter torque value: 45
%Suggested throttle percentage: 91.777%

%6300 RPM
%Enter RPM value: 6300
%Enter torque value: 40
%Suggested throttle percentage: 82.923%

%6600 RPM
%Enter RPM value: 6600
%Enter torque value: 50
%Suggested throttle percentage: 96.341%

%6900 RPM
%Enter RPM value: 6900
%Enter torque value: 48
%Suggested throttle percentage: 91.262%

%7200 RPM
%Enter RPM value: 7200
%Enter torque value: 45
%Suggested throttle percentage: 81.801%

%7500 RPM
%Enter RPM value: 7500
%Enter torque value: 50
%Suggested throttle percentage: 88.083%

%7800 RPM
%Enter RPM value: 7800
%Enter torque value: 50
%Suggested throttle percentage: 90.708%

%8100 RPM
%Enter RPM value: 8100
%Enter torque value: 50
%Suggested throttle percentage: 95.737%

%8400 RPM
%Enter RPM value: 8400
%Enter torque value: 45
%Suggested throttle percentage: 87.926%

%8700 RPM
%Enter RPM value: 8700
%Enter torque value: 40
%Suggested throttle percentage: 83.727%

%9000 RPM
%Enter RPM value: 9000
%Enter torque value: 45
%Suggested throttle percentage: 94.633%

%9300 RPM
%Enter RPM value: 9300
%Enter torque value: 40
%Suggested throttle percentage: 90.202%

%9600 RPM
%Enter RPM value: 9600
%Enter torque value: 40
%Suggested throttle percentage: 93.266%

%9900 RPM
%Enter RPM value: 9900
%Enter torque value: 40
%Suggested throttle percentage: 97.667%

%10200 RPM
%Enter RPM value: 10200
%Enter torque value: 37
%Suggested throttle percentage: 98.253%