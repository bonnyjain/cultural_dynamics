global params 
init = [100 100]; 
timesteps = [0 100]; 
figure; hold on; 
for test = 1:10
    subplot(2,5,test);
    params = rand(6,1); 
    [T,Y] = ode23(@cultural_dynamics, timesteps, init); 
    plot(T,Y); 
    title(num2str(test)); 
end