particles_coordinates = rand(1000, 3) * 30;
particles_masses = rand(1000) * 3;
particles_qs = rand(1000) * 2;
particles_speeds = rand(1000, 3) * 10;
time_step = 0.01;
%particles_masses = input('Enter masses');
%particles_qs = input('Enter charges');
%particles_speeds = input('Enter start speed of [particles:');
%time = input('Enter moment of time');
%[ravnodey particles_speeds] = ravnodeistvuy(ravnodey, particles_coordinates, particles_speeds, particles_qs, time_step);
looping(particles_coordinates, particles_speeds, particles_qs, time_step);



    