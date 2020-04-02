function Z = non_max(img,D)
  [M,N] = size(img);
  Z = zeros(M,N);
  angle = (D * 180.0)/pi;
  for(i=1:M)
    for(j=1:N)
      if(angle(i,j) < 0)
        angle(i,j) = angle(i,j) + 180.0;
      end
    end
  end
  
  for(i=2:M-1)
    for(j=2:N-1)
      q = 255;
      r = 255;
      
      if((0 <= angle(i,j) && angle(i,j)< 22.5) || (157.5 <= angle(i,j) <= 180))
        q = img(i,j+1);
        r = img(i,j-1);
      elseif(22.5<= angle(i,j) && angle(i,j)< 67.5)
        q = img(i+1,j-1);
        r = img(i-1,j+1);
      elseif(67.5<= angle(i,j) && angle(i,j)<112.5)
        q = img(i+1,j);
        r = img(i-1,j);
      elseif(112.5<= angle(i,j) && angle(i,j)<157.5)
        q = img(i-1,j-1);
        r = img(i+1,j+1);
      endif
      
      if((img(i,j)>= q) && (img(i,j)>=r))
        Z(i,j) = img(i,j);
      else
        Z(i,j) = 0;
      endif  
    end
  end
endfunction
