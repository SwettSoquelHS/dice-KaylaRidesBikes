Die aDie;
//Die aSecondDie;
//Die aThirdDie;

void setup(){
  size(500, 500);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  aDie = new Die(0, 0);
  //aSecondDie = new Die(60, 0);
  //aThirdDie = new Die(120, 0);
  noLoop();
}

void draw(){
  //your code here
  background(150,250,250);
  aDie.roll();
  aDie.show();
  
  //aSecondDie.roll();
 // aSecondDie.show();
  
 // aThirdDie.roll();
  //aThirdDie.show();
  
  
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
    
	}
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
  rollNumber = (int)(Math.random() * 6) + 1;
  println(aDie.rollNumber);
  
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
  if(aDie.rollNumber == 1){
    //use for middle dot coordinate/size
    ellipse(45, 45, 10, 10);
  } else if(aDie.rollNumber == 2){
    
    ellipse(30,30, 10, 10);
    ellipse(60,60, 10, 10);
  } else if(aDie.rollNumber == 3){
    
    ellipse(30,30, 10, 10);
    ellipse(45, 45, 10, 10);
    ellipse(60, 60, 10, 10);
  } else if (aDie.rollNumber == 4){
    //top row
    ellipse(30,30, 10, 10);
    ellipse(60, 30, 10, 10);
    
    //bottom row
    ellipse(60, 60, 10, 10);
    ellipse(30, 60, 10, 10);
    
  } else if (aDie.rollNumber == 5){
    
    ellipse(30,30, 10, 10);
    ellipse(60, 30, 10, 10);
    ellipse(60, 60, 10, 10);
    ellipse(30, 60, 10, 10);
    ellipse(45, 45, 10, 10);
    
  } else {
    //top row
    ellipse(30, 30, 10, 10);
    ellipse(45, 30, 10, 10);
    ellipse(60, 30, 10, 10);
    
    //bottom row
    ellipse(60, 60, 10, 10);
    ellipse(30, 60, 10, 10);
    ellipse(45, 60, 10, 10);
  }
	}
}
