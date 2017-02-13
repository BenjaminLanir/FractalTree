private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(580,580);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,580);
	drawBranches(320, 480, 100,3*Math.PI/2);
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
	if (branchLength < 1)
	{}
	else
	{
		double angle1 = (int)(angle + 6);
		double angle2 = (int)(angle - 6);
		int endX1 = (int)(branchLength*Math.cos(angle1) + x);
        int endY1 = (int)(branchLength*Math.sin(angle1) + y);
        int endX2 = (int)(branchLength*Math.cos(angle2) + x);
		int endY2 = (int)(branchLength*Math.sin(angle2) + y);
		line(x, y, endX1, endY1);
		line(x, y, endX2, endY2);
		drawBranches(endX1, endY1, branchLength/2, angle + 5);
		drawBranches(endX2, endY2, branchLength/2, angle - 5);
	}
}