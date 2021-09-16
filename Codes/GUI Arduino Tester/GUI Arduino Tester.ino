void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}
float r = 0;

void loop() {


  
  r = random(43, 95);
  float n1 = r/100;
  
  r = random(43, 95);
  float n2 = r/100;
  
  r = random(43, 95);
  float n3 = r/100;
  
  r = random(43, 95);
  float n4 = r/100;

  r = random(43, 95);
    float n5 = r/100;
  
  r = random(43, 95);
    float n6 = r/100;

  r = random(43, 95);
    float n7 = r/100;
  
  r = random(43, 95);
    float n8 = r/100;

  r = random(43, 95);
  float n9 = r/100;


  Serial.println(String(n1)+","+String(n2)+","+String(n3)+","+String(n4)+","+String(n5)+","+String(n6)+","+String(n7)+","+String(n8)+","+String(n8));

delay(1000);

  // put your main code here, to run repeatedly:

}
