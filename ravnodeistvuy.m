function[ravnodey] = ravnodeistvuy(ravnodey, particles_coordinates, particles_speeds, particles_qs, time)
    vector_magnetic = [0 0 0.1];
    for k = 1 : size(ravnodey, 1)
        for j = k + 1 : size(ravnodey, 1)
            F_k_j = qulon(particles_coordinates(k, :), particles_coordinates(j, :), particles_qs(k), particles_qs(j));               
            ravnodey(k, :) = ravnodey(k, :) - F_k_j;
            ravnodey(j, :) = ravnodey(j, :) + F_k_j;
        end
    end
    ravnodey = forse_magnetic(vector_magnetic, particles_speeds, particles_qs, time, ravnodey);
end
