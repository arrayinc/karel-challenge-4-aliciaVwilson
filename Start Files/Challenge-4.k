/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/

import "turns";

function ClimbMountains(){
	repeat(3){
		moveToMountain();
		climbUp();
		plantFlag();
		climbDown();
		moveToEnd();
	}
}

function moveToMoutain(){
	while(frontIsClear()){
		move();
	}
}

function climbUp(){
	while(frontIsBlocked()){
		climbStair();
	}
}

function climbStair(){
	turnLeft();
	move();
	turnRight();
	move();
}

function plantFlag(){
	putBeeper();
}

function climbDown(){
	while(frontIsClear()){
		descendStair();
	}
}

function descendStair(){
	move();
	turnRight();
	if(frontIsClear()){	
		move();
		turnLeft();
	} else {
		turnLeft();
	}
}

function moveToEnd(){
	while(frontIsClear()){
		move();
	}
}
