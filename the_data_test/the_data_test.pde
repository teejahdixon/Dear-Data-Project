color psychic = color(255, 113, 229);
//------------------------------------
color colours[] = {psychic, psychic};
int levels[] = {5, 8};
int growth = levels[1] - levels[0];
void setup(){
  size(400,400);
}
//------------------------------------
void draw() {
  background(255);
  stroke(colours[1]+180);
  fill(colours[0]);
  circle(mouseX, mouseY, growth*30);
}

// -- loop through each line of our data array in turn:
    //for (int i=0; i< lightData.length; i++) {
 
        // -- a local variable (an array of Strings) into which we put the output of split():
        //String [] dataItems = split(lightData[i], ","); // <-- splitting the line at each comma
 
        // -- we need to initialise each element of the data array now we know how many items are in the line:
        //data [i] = new String [dataItems.length];
 
        // -- loop through each comma separated item in the line and put each data item into the appropriate array element:
        //for (int d=0; d< dataItems.length; d++) {
            //data[i][d] = dataItems[d]; // <-- 'i' is the data line (row), 'd' is the data element number (column)
             
            // -- check what is going on in the console - so that we know what is what:
            //println(i, d, dataItems[d]); // <-- print out the values of the important variables!
