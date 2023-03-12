library(magick)

#Step 1: to add first comparison meme

meme  <- image_read('https://mat3e.github.io/brains/img/3.jpg')
def <- image_blank(width = 700, height = 305, color = 'white')
aes <- image_annotate(def,"This is your brain on Python", size = 40, color = 'black', location = '+15-5') 
format = image_append(c(meme,aes))
print(format)

#Step 2: To add comparison meme 2:

meme2 <- image_read('https://mat3e.github.io/brains/img/5.jpg')
def2 <- image_blank(width = 700, height = 305, color = 'white')
aes2 <- image_annotate(def2,'This is your brain on R', size = 40, color = 'black', location = '+180-5')
format2 <- image_append(c(meme2,aes2))
print(format2)

#Step 3: Combining the blanks and meme toghether and then stacking to form the meme.

formattotal1 = image_append(c(format,format2), stack = TRUE)
print(formattotal1)





