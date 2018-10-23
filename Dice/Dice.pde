Die aDie;

void setup(){
  size(500, 500);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  aDie = new Die(width/4, height/4);
  noLoop();
}

void draw(){
  //your code here
  background(150,250,250);
  aDie.show();
  
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}

//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
  int x_pos, y_pos;
  int rollNumber;
	
	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
    rollNumber = (int)(Math.random() * 7) + 1;
	}
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
	}	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
		//your code here
  pushMatrix();
  translate(x_pos, y_pos);
  stroke(250, 250, 100);
  fill(250, 250, 100);
  rect(20,20,50,50); 
  popMatrix();
	}
}
