int x=250; // Horizontal position of ball
int direction_x=2; // Change in horizontal position each time draw() executed
int y=150; // Vertical position of ball
int direction_y=2; // Change in horizontal position each time draw() executed
int lives=3;
int score=0;
void setup()
{
size(400,400); // Create a window 400x400 pixels
}
void draw()
{
background(255,255,255); // Clear screen to white
fill(0,255,0); // Set fill colour to blue
rect(0,mouseY,20,120); // Position rectangle using mouse
fill(255,0,0);
ellipse(x,y,20,20); // Draw blue disk centered on x,y diameter 20
x=x+direction_x; // Update position
if(x<20)
{
direction_x=-direction_x; // Bounce
lives--; // Reduce lives by one
if(lives==0) exit(); // If lives is zero then quit
}
if(x>(width-10)) direction_x=-direction_x;
y=y+direction_y;
if(y<10) direction_y=-direction_y;
// if(y>(height-10)) direction_y=-direction_y;
if(y>(height-10)) direction_y=-direction_y;

if((x<30)&&(abs(mouseY-y)<120)) 
{
direction_x=-direction_x; // Bounce
score++; // Increase score by one
}
textSize(32);
fill(0, 0, 255);
text("Score: " + score, 10, 30); // Display the word "Score" followed by the score
text("Lives: " + lives, width - 130, 30); // Display the word "Lives" followed by the lives
}
