import processing.serial.*;
Serial port;
String[] Data;
float G = 0.0;


void setup () {
  size(720, 960);
  port = new Serial(this, "COM3", 9600);
  port.bufferUntil('\n');
}

void draw () {
  background(175, 175, 175);
  fill(231);
  stroke(0);
  rect(40, 30, 640, 100);
  rect(40, 150, 240, 440);
  rect(40, 150, 240, 50);
  rect(300, 150, 380, 440);
  rect(40, 540, 240, 50);
  textSize(38);
  fill(0);

  //
  text("Cryogenic Diode Monitor", 115, 92);

  //Individual Diode Temperature
  textSize(20);

  text("Top", 140, 181);
  text("Bottom", 118, 570);

  text("Diode 1", 65, 240);
  text("Diode 2", 65, 280);
  text("Diode 3", 65, 320);
  text("Diode 4", 65, 360);
  text("Diode 5", 65, 400);
  text("Diode 6", 65, 440);
  text("Diode 7", 65, 480);
  text("Diode 8", 65, 520);

  text("Average Temp", 64, 632);

  //Quantitative Liquid Graph
  text("Liquid Level", 430, 177);

  fill(178, 178, 178);
  rect(310, 200, 180, 370);

  fill(242, 242, 238);
  rect(320, 550, 160, -330);

  fill(0);
  String X = "";
  X += port.readStringUntil('\n');
  Data = X.split(",");

  for (String a : Data)
    System.out.println(a);

  System.out.println();

  int size = Data.length;
  System.out.println(size);

  if (size > 9) ; 
  {

    text(""+Data[0], 170, 240);
    text(""+Data[1], 170, 280);
    text(""+Data[2], 170, 320);
    text(""+Data[3], 170, 360);
    text(""+Data[4], 170, 400);
    text(""+Data[5], 170, 440);
    text(""+Data[6], 170, 480);
    text(""+Data[7], 170, 520);

    fill(125, 172, 250);

    float n = 0;
    for (int i = 0; i < Data.length-1; i++) {
      if (float(Data[i]) > 0.93)
        n++;
    }
    rect(320, 550, 160, n*(-20));
  }
}
