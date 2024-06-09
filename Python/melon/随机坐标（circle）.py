from turtle import*
from random import choice as c,randint as r

listColor = ["cyan","LightBlue2","SeaGreen1","deep pink","black","blue2","medium purple","seashell2","pink"]

setup(width=1.0,height=1.0)
speed(0)
hideturtle()

for x in range(150):
    a = c(listColor)
    color(a,a)
    penup()
    goto(r(-600,600),r(-275,275))
    pendown()
    begin_fill()
    circle(r(3,25))
    end_fill()

done()