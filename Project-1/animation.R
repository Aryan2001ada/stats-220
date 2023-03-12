library(magick)

#In addition to the necessary frames for animation

frame1 <- image_read('https://www.usab.com/-/media/3d57012cc2434a119f2cf55118b92343.jpg?h=600&iar=0&w=800&hash=34074B897BF6526387B8CE5D0D7778EC')
frame2 <- image_read('https://media.istockphoto.com/id/173927821/photo/stressed-businessman-with-wide-eyes-looking-frightened.jpg?s=612x612&w=0&k=20&c=WyfColxxlOYqiOpdb5TBC2C3oz7Ix8T5CJvTE0pxLmc=')
frame3 <- image_read('https://i.pinimg.com/474x/32/51/4c/32514cbbdaa2e28a3b936e555c1cc782--funny-baby-faces-funny-babies.jpg')
frame4 <- image_read('https://thumbs.dreamstime.com/b/basketball-action-missing-point-44279359.jpg')
frames <- c(frame1,frame2,frame3,frame4)
animation <- image_animate(frames, fps = 10)
gif= image_write(animation, 'my_animation.gif')

#File is now converted as 'my_animation.gif'

#image_read('my_animation.gif')


#Delete the '#' in line-15 to view animation in R-Studio else open using photo editor.