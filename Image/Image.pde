//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Stephen-King-696x442.png
int picWidth = 696;
int picHeight = 442;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { //True if Landscape or Square
largerDimension = picWidht;
smallerDimension = picHeight;
widthLarger = true;
} else { //False if Portrait
largerDimension = picWidht;
smallerDimension = picHeight;
heightLarger = true;
}
//
//Aspect Ration Calculations
if ( widthLarger ==true ) imageWidthRation = largerDimension / largerDimension;
if ( widthLarger == true) imageHeightRation = smallerDimension  / largerDimension;
if ( heightLarger ==true ) imageWidthRation = smallerDimension / largerDimension;
if ( heightLarger == true) imageHeightRation = largerDimension / largerDimension;
//Population
pic = loadImage("../Images Used/Stephen-King-696x442.png");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
// Adjust Image Variables for Aspect Ratio
float picWidthAdjusted, picHeightAdjusted;
backgroundImageWidth = backgroundImageWidth * imageWidthRation;
backgroundImageHeight = backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode = false ) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if ( nightMode = true ) tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
