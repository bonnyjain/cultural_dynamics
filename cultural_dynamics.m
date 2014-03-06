function dy = cultural_dynamics(t, y)
    global params 
%     beta1 = params(1);
%     gamma1 = params(2);
%     beta2 = params(3);
%     gamma2 = params(4);
    beta1 = 1; 
    gamma1 = 1; 
    beta2 = 1; 
    gamma2 = 1; 
    k12 = params(5);
    k21 = params(6);
    dy = zeros(2,1);
    dy(1) = (beta1 - gamma1 - k12) * y(1) + k21 * y(2);
    dy(2) = k12 * y(1) + (beta2 - gamma2 - k21) * y(2);
end

