public void setup()
{
	size(700,700);
	//myFractal(350,350,650);
}

public void draw()
{
	background(0);
	myFractal(350,350,650);
}

public void myFractal(int x, int y, int d)
{
	if(d <= 40){
		ellipse(x,y,d,d);
	}
	else{
		
		stroke(255,255,255);
		noFill();
		myFractal(x+(d/4),y,d/2);
		myFractal(x-(d/4),y,d/2);
		myFractal(x,(y-d/4),d/2);
		myFractal(x,(y+d/4),d/2);
		ellipse(x,y,d,d);
	}
}