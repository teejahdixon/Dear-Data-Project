color psychic = color(255, 113, 229);
String[] dataSheet;
String[][] data;
color [][] sketchColours;

//------------------------------------

color colours[] = {psychic, psychic};
int levels[] = {5, 8};
int growth = levels[1] - levels[0];
void setup() {
  dataSheet = loadStrings("Tables(Sheet1).csv");
  data = new String [dataSheet.length][];

  size(400, 400);
  for (int i=0; i< 19; i++) {
    String [] dataItems = split(dataSheet[i], ",");
    data [i] = new String [dataItems.length];
    for (int d=0; d< dataItems.length; d++) {
      data[i][d] = dataItems[d];
    }
  }
  sketchColours = new color [dataSheet.length][];
  //
  for (int i=0; i<data.length; i++) {
    color type1 = color(0);
    if (data[i][1] == "Psychic") {
      type1 = color(255, 59, 220);
    } else if (data[i][1] == "Fire") {
      type1 = color(255, 184, 113);
    } else if (data[i][1] == "Bug") {
      type1 = color(185, 216, 118);
    } else if (data[i][1] == "Grass") {
      type1 = color(134, 255, 155);
    } else if (data[i][1] == "Flying") {
      type1 = color(180, 226, 255);
    } else if (data[i][1] == "Fairy") {
      type1 = color(255, 180, 225);
    } else if (data[i][1] == "Water") {
      type1 = color(149, 154, 255);
    } else if (data[i][1] == "Normal") {
      type1 = color(211, 211, 211);
    } else if (data[i][1] == "Rock") {
      type1 = color(193, 152, 76);
    } else if (data[i][1] == "Ground") {
      type1 = color(216, 193, 133);
    } else if (data[i][1] == "Fighting") {
      type1 = color(229, 90, 60);
    }
    type1 = sketchColours[i][0];
    for (int d=1; d<data[i].length; d++) {
    }
  }//
}
//------------------------------------
void draw() {
  background(255);
  stroke(colours[1]+180);
  for (int i=0; i<data.length; i++){
    fill(sketchColours[i][0]);
    circle(i*10, i*10, 50, 50);
  }
}
