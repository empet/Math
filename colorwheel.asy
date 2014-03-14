import palette;
import math;
size(300);

int n=512;

pair a=(-1,-1);
pair b=(1,1);
real stepx=(b-a).x/n;
real stepy=(b-a).y/n;

pen img(int X, int Y) {
  pair z=a+(X*stepx,Y*stepy);
  real H=degrees(z,warn=false);//Hue
  real modulus=abs(z);
  real S,V;//  Saturation, Value
  if(modulus<1){
    V= 0.8;
    S=1;}
  else{
    V=1;
    S=0;}
  return hsv(H,S,V);
}

image(img,n,n, (0,0),(300,300),antialias=true);
shipout(format="jpg");
