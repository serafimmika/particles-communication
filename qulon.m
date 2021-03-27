function[sila] = qulon(particles_coordinate1, particles_coordinate2, partical_q1, partical_q2)
    vector_r = particles_coordinate2 - particles_coordinate1;
    sila = vector_r*partical_q1*partical_q2/norm(vector_r)^3;
end