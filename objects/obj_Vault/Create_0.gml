randomize();

angle=30;
Warning=0;
normStep=0;
countOfPins=3;
pins = [];
for(i=0;i<countOfPins;i++)
	{
		pins[i]=irandom_range(0,(360/angle-1));
	}
i=0;



Point_dir = 0; //the variable that will store what direction to rotate to
click_sound=0;



