
# HW02 Requirements

Q: Please modify main.s to observe the `push` and the `pop` instructions:  

	Does the order of the registers in the `push` and the `pop` instructions affect the excution results?  

	For example, will `push {r0, r1, r2}` and `push {r2, r0, r1}` act in the same way?  

	Which register will be pushed into the stack first?

--------------------

A: 
This is my environment setting in main.s and qemu

![environment_code](https://github.com/WYZong/ESEmbedded_HW02/blob/master/pictures/environment_code.png)

![environment](https://github.com/WYZong/ESEmbedded_HW02/blob/master/pictures/setting.png )

There are obvious difference that we can find out. Even warning was print when we gave the make  
![environment_code](https://github.com/WYZong/ESEmbedded_HW02/blob/master/pictures/warning.jpg)


First, give any value to the reg ( r0 , r1 , r2 )

and the reference set with the order of { r0 , r1 , r2 } in my make.s 

![reference](https://github.com/WYZong/ESEmbedded_HW02/blob/master/pictures/reference.png)


Finall, compare the result with the order of { r2 , r0 , r1 }

![reference](https://github.com/WYZong/ESEmbedded_HW02/blob/master/pictures/comparison.png)

So, the results is same between these ways

The register will be pushed into the stack with ascending order. ( ro -> r1 -> r2 ) 
