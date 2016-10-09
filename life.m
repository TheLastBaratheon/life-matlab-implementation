%John Conway's Game of Life
%Simulated as pixels in real time
%white= alive, black=dead

len=500; 
lattice=int8(rand(len,len)); %defining array of dimensions(len,len) int8 converts into signed 8 bit integers
up=[2:len 1]; 
down=[len 1:len-1]; 
colormap(bone(3)); %refer to http://matlab.izmiran.ru/help/techdoc/ref/colormap.html
for i=1:100
    neighbours=lattice(up,:)+lattice(down,:)+lattice(:,up)+lattice(:,down)+lattice(up,up)+lattice(up,down)+lattice(down,up)+lattice(down,down);
    lattice = neighbours==3 | lattice & neighbours==2; %defining neighbourhood and setting conditions for being alive
    image(lattice*2); 
    pause(0.05) %generating a new image at each timestep of 0.05s
end
