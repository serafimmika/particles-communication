function[ravnodey] = forse_magnetic(vector_magnetic, particles_speeds, particles_qs, time, ravnodey)
    for i = 1 : size(ravnodey, 1)
        ravnodey(i, :) = ravnodey(i, :) + particles_qs(i) * cross(particles_speeds(i, :), vector_magnetic);
    end
end