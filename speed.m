function[speed_i] = speed(index, particles_speeds, partical_masses, F, time)
    speed_i = particles_speeds(index) + F(index) * time;
end