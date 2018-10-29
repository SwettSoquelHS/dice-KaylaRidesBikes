//find better way to write?

Die aDie;


void setup(){
  size(500, 500);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  aDie = new Die(0, 0);

  noLoop();
}

void draw(){
  //your code here
  background(150,250,250);
  //figure how to do this part better
  
  aDie.roll();
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
  int totalRoll;
	

	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
    
	}
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
  
    rollNumber = (int)(Math.random() * 6) + 1;
  
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
  
  stroke(0);
  fill(0);
  
  totalRoll = 0;
  
  if(rollNumber == 1){
    
    //use for middle dot coordinate/size
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
    totalRoll = totalRoll + 1;
  } else if(rollNumber == 2){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos +60, 10, 10);
    totalRoll = totalRoll + 2;
  } else if(rollNumber == 3){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    totalRoll = totalRoll + 3;
  } else if (rollNumber == 4){
    //top row
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    
    
    //bottom row
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    totalRoll = totalRoll + 4;
    
  } else if (rollNumber == 5){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
    totalRoll = totalRoll + 5;
    
  } else {
    //top row
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 45, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    
    //bottom row
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    ellipse(x_pos + 45, y_pos + 60, 10, 10);
    totalRoll = totalRoll + 6;
  }
  println(totalRoll);
  textSize(32);
  text("Total: " + totalRoll, 50, 300);
	}
}
