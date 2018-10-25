Die aDie;
Die aSecondDie;
Die aThirdDie;
Die a2Die;
Die a2SecondDie;
Die a2ThirdDie;
Die a3Die;
Die a3SecondDie;
Die a3ThirdDie;

void setup(){
  size(500, 500);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  aDie = new Die(0, 0);
  aSecondDie = new Die(60, 0);
  aThirdDie = new Die(120, 0);
  a2Die = new Die(0, 60);
  a2SecondDie = new Die(60, 60);
  a2ThirdDie = new Die(120, 60);
  a3Die = new Die(0, 120);
  a3SecondDie = new Die(60, 120);
  a3ThirdDie = new Die(120, 120);
  
  noLoop();
}

void draw(){
  //your code here
  background(150,250,250);
  aDie.roll();
  aDie.show();
  
  aSecondDie.roll();
  aSecondDie.show();
  
  aThirdDie.roll();
  aThirdDie.show();
  
  a2Die.roll();
  a2Die.show();
  
  a2SecondDie.roll();
  a2SecondDie.show();
  
  a2ThirdDie.roll();
  a2ThirdDie.show();
  
  a3Die.roll();
  a3Die.show();

  a3SecondDie.roll();
  a3SecondDie.show();
  
  a3ThirdDie.roll();
  a3ThirdDie.show();
  
  
  
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
  println(rollNumber);
  
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
  if(rollNumber == 1){
    //use for middle dot coordinate/size
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
  } else if(rollNumber == 2){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos +60, 10, 10);
  } else if(rollNumber == 3){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
  } else if (rollNumber == 4){
    //top row
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    
    //bottom row
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    
  } else if (rollNumber == 5){
    
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    ellipse(x_pos + 45, y_pos + 45, 10, 10);
    
  } else {
    //top row
    ellipse(x_pos + 30, y_pos + 30, 10, 10);
    ellipse(x_pos + 45, y_pos + 30, 10, 10);
    ellipse(x_pos + 60, y_pos + 30, 10, 10);
    
    //bottom row
    ellipse(x_pos + 60, y_pos + 60, 10, 10);
    ellipse(x_pos + 30, y_pos + 60, 10, 10);
    ellipse(x_pos + 45, y_pos + 60, 10, 10);
  }
	}
}
