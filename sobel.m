function [G,theta] = sobel(img)
  Kx = [ -1 0 1 ; -2 0 2 ; -1 0 1 ];
  Ky = [ 1 2 1 ; 0 0 0 ; -1 -2 -1];
  
  Ix = conv2(img, Kx);
  Iy = conv2(img, Ky);
  
  theta = atan2(Ix,Iy);
  G = sqrt(Ix.^2 + Iy.^2);
  G = (G ./ max(G)).*255;
endfunction
