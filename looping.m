function[ravnodey] = looping(particles_coordinates, particles_speeds, particles_qs, step)
    %particles_colors = ['r' 'g' 'b'];
    border_cube_length = 29;
    while true 
        ravnodey = zeros(size(particles_coordinates, 1), 3, 'double');
        ravnodey = ravnodeistvuy(ravnodey, particles_coordinates, particles_speeds, particles_qs, step);
        for i = 1 : size(particles_coordinates, 1)
            particles_speeds(i, :) = particles_speeds(i, :) + ravnodey(i, :) * step;
            particles_coordinates(i, :) = particles_coordinates(i, :) + particles_speeds(i, :) * step;
        end
        for i = 1 : size(particles_coordinates, 1)
            for j = 1 : size(particles_coordinates, 2)
                if particles_coordinates(i, j) > border_cube_length
                    particles_coordinates(i,j) = 0;
                elseif particles_coordinates(i, j) == 0
                    particles_coordinates(i, j) = border_cube_length;
                end
            end
        end
        %particles_coordinates
        pl = plot3(particles_coordinates(:,1),particles_coordinates(:,2) , particles_coordinates(:,3), 'or');
      %  if isempty(particles_colors) == 0
       %     for i = 1:size(particles_coordinates)
         %       pl(i).Color = particles_colors(i);  
         %   end
       % end
        xlim([0, 30]);
        ylim([0, 30]);        
        zlim([0, 30]);
        drawnow
        pause(0.1);
    end
end