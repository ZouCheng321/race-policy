load('maps.mat'); % load some predefined maps
id = randi(length(maps)); % select a random map from a set of predifined maps
mapdata = maps{3}; 
env = DDRobotEnv(mapdata);
clear racePolicy;
env.run(@racePolicy, 1000, 1);
