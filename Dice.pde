Die a;
Die b;
void setup()
{
	a=new Die(50,50);
	b=new Die(150,150);
	size(300,300);
	noLoop();
}
void draw()
{
	background(10,100,0);
	a.roll();
	a.show();
	b.roll();
	b.show();
	stroke(225);
	text("Sum = "+(a.num+b.num),25,25);



}
void mousePressed()
{ 
	redraw();

}


class Die //models one single dice cube
{ 
	int myX, myY, num;//variable declarations here
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
		//variable initializations here
	}
	void roll()
	{
		num=(int)(Math.random()*6)+1;

	}
	void show()
	{    

		fill(255);
		rect(myX,myY,100,100);
		fill(0);
	if(num==1)
	 	{
	 		ellipse(myX+50,myY+50,20,20);
	 	}
	else if(num==2)
		{
		ellipse(myX+50,myY+30,20,20);
		ellipse(myX+50,myY+60,20,20);
		}
	else if(num==3)
	{
		for(int c=20; c<80;c+=25)
		{
			ellipse(myX+50,myY+c,20,20);
		}
	}
	else if(num==4)
	{
		ellipse(myX+25,myY+30,20,20);
		ellipse(myX+25,myY+70,20,20);
		ellipse(myX+75,myY+30,20,20);
		ellipse(myX+75,myY+70,20,20);
	}
	else if(num==5)
	{
		ellipse(myX+25,myY+30,20,20);
		ellipse(myX+25,myY+70,20,20);
		ellipse(myX+75,myY+30,20,20);
		ellipse(myX+75,myY+70,20,20);
		ellipse(myX+50,myY+50,20,20);
	}
		else if(num==6)
	{
		ellipse(myX+25,myY+25,20,20);
		ellipse(myX+25,myY+50,20,20);
		ellipse(myX+25,myY+75,20,20);
		ellipse(myX+75,myY+25,20,20);
		ellipse(myX+75,myY+50,20,20);
		ellipse(myX+75,myY+75,20,20);
	}

}
}
