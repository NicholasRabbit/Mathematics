### Puzzles

Solutions of puzzles of Mathematics for Programming in the programme in Wintec. 

#### 2. Measuring exactly 4 litres of water

> You have a 5-litre Jug and a 3-litre Jug and an unlimited supply of water. You need to measure exactly 4-litre of water but there is no measuring instrument or cup. Also, Jugs are oddly shaped and don't contain any marks.  

Note it says that to measure exactly 4 litres of water, but not to measure 2 * 2 litres. 

1. Fill the 5-litre jug full with water.

2. Then fill the 3-litre jug fully with the water from the 5-litre jug; there are 2 litres of water remained in the 5-litre jug.

3. Pour the water in the 3-litre jug out and fill it with the remaining 2 litres of water in the 5-litre jug. Now the the 3-litre jug needs 1 more litre to be full. 

4. Fill the 5-litre jug full with water again and pour the water in it to the 3-litre jug until the latter is full. 

   As a result, there are 4 litres of water in the 5-litre jug.

#### 3. Number of squares in a chess board  

> How many squares in a chess board?

Suppose the length of one side of a square is 1, not only are there 1\*1 squares, but also there are 2\*2, 3\*3... 

<img src="note-images/1776895850815.png" alt="1776895850815" style="zoom:50%;" />

1. Let's start with a small chess board with only one 1x1 square. 

   We start with the vertex on the top left corner. There is only one square with area of 1x1.

   The number is $1$, which is $1^2$

2. Then count squares in a 2x2 chess board. 

   First of all, count squares of 1x1 from the top left corner, too. 

   We only count vertices of squares because it is easy and we don't make mistakes by counting more ones. Note that these vertices of squares overlap each other. Be careful. 

   There are 4 1x1  squares. 

   Secondly, count squares of 2x2.  Start from the top left corner, too. 

   There are only 1 "2x2" squares. 

   The number is $4 + 1$ which is $2^2 + 1$. 

3. Count the squares in "3x3" chess board. 

   Note that count the vertices. 

   1x1: 9 = $3^2$

   2x2: 4 = $2^2$		The 4 red vertices on the top left corner are the vertices of these 4 "2x2" squares. 

   3x3: 1 = $1^2$

#### 4. Fizzbuzz

Here is the code: 

```c
#include <stdio.h>

void fizzbuzz();
int main(int argc, char *argv[])
{
	fizzbuzz();
	return 0;
}

void fizzbuzz() {
	int i;
	for (i = 1; i <= 100; i++) {
		// The condition to test the multiples of 3 and 5 should be the first 
		// branch. or it will never be executed. 
		if ((i % 3 == 0) && (i % 5 == 0))
			printf("Number: %d, FizzBuzz\n", i);
		else if (i % 5 == 0) 
			printf("Number: %d, Buzz\n", i);
		else if (i % 3 == 0)
			printf("Number: %d, Fizz\n", i);
	}

}
```

#### 5. Suicide circle

Let's start with 1 soldier and assume that however many soldiers we start the killing with NO. 1. 

```txt
N		Survivor
1		1
2		1			# 1
3		3
4		1			# 1
5		3
6		5
7		7
8		1			# 1
9		3
10		5
11		7
12		9
13		11
14		13
15		15
16		1			# 1
```

We can find that if the number is the power of two, the survivor is always of NO. 1. How do we know it is still 1 if the exponent is 100, such as $2^{100}$?  It is easy; After the first round of killing, $2^{100} \div 2 = 2^{99}$ and NO. 1 starts killing in the next round until the last two soldiers. 

How can we know where Josephus is if the number is not the power of 2? 

Suppose there are 7 soldiers, who is the survivor? 

Since we know who is the survivor when there are 4 soldiers, the question becomes how many soldiers should be killed until there are 4 remained. We can't add more soldiers to 8, but kill them. The answer is simple: 7 - 4 = 3. That is: 1 kills 2, 3 kills 4, and 5 kills 6. Then 7 starts killing when there are 4 soldiers. As we concluded before, the person who starts when the number is power of 2 is the survivor. Thus, 7 is the survivor. 

Now let's solve the problem of 41 soldiers. 

The closest smaller power of 2 to 41 is 32, $2^5$. 41 - 32 = 9. After 17 kills 18, 19 starts killing when there are 32 soldiers, so he is the survivor. 

#### 6. 25 Horses Puzzle

1) First of all, divide the 25 horses into groups of 5, and race horses in each group. (5 races)

2) Then race the 5 winners of these groups and tag the group where the fastest one  of this second race in with "a", the second fastest with "b" and so forth. The fastest horse in the group is "a1" , the second is "a2" and so on.  (1 race)

```txt
a5 a4 a3 a2 a1
b5 b4 b3 b2 b1
c5 c4 c3 c2 c1
d5 d4 d3 d2 d1
e5 e3 e3 e2 e1
```

"a1" is the fastest of the fastest, therefore, we find out one after the second race. 

3) Since we only need the find out the fastest 3 horses, the group "d" and "e" should omitted. Because "d1" is slower than "c1" and the rest of horses in group "d" is definitely slower than "c1", so is group "e". 

```txt
a5 a4 a3 a2 a1
b5 b4 b3 b2 b1
c5 c4 c3 c2 c1
```

Now there are only three groups left, "c2 to c5" should be eliminated because they are slower than "c1". 

```txt
a5 a4 a3 a2 a1
    	 b2 b1
 			c1
```

Similarly, "b3 to b5" should also be eliminated, because they are slower than "b2". 

We have already found out "a1", so we only need to race "a2, a3, b1, b2 and c1". The fastest 2 horses in this race are the second and the third fastest overall, respectively. 

#### 8. Two Marbles and 100 floors

Explanation of the puzzle. 

The puzzle asks us to find out the minimum drops when we don't know which floor is. A marble may break at 100th floor or 1st floor. We should find out the least number of drops at the worst scenario. To illustrate, if a marble break at 100th floor, we drop one from 50th floor and have one marble left. We have to start with the first floor to the 99th floor and that needs 100 drops. What if the marble breaks at the first floor? We don't know that and we can't start from the first floor because we are not sure we have such a good luck. Thus, we should find out from which floor we start dropping and how many the least drops are. 

(1) Suppose we need at least n drops, and we also start from the *n* th floor. The reason is if it breaks we only let `n - 1` drops to test with the other marble. 

If is doesn't break, we have `n-1` drops left, too. Then we go up to `n + (n - 1)` floor because we have dropped 1 time and have `n - 1` left. If it breaks at `n + (n - 1)`, two drops have been done and `n -2 (n + (n - 1) - (n + 1))` left. 

(2) Since the total storey is 100, we have `n + (n - 1) + (n - 2) ... + 1 <= 100`. $n \approx 14$. 